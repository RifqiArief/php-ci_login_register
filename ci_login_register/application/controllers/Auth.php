 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Auth extends CI_Controller {

 	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}
 
 	public function register()
 	{
 		$this->form_validation->set_rules('txtEmail', 'Email', 'required|is_unique[users.email]');
 		$this->form_validation->set_rules('txtPass','Password', 'required');
		$this->form_validation->set_rules('txtPass2','Verifikasi password','required|matches[txtPass]');
		

 		if($this->form_validation->run() === false){
 			// $this->load->view('layouts/header');
 			$this->load->view('auth/register');
 			$this->load->view('layouts/footer');
 		}
 		else{
 			//save user
 			$this->user_model->insert_user(); 

 			//verifikasi email
 			$this->send_email_verification($this->input->post('txtEmail'),$_SESSION['token']);
 			 
 			//redirect user
 			redirect('login');
 		}
 	} 

 	public function send_email_verification($email,$token)
 	{
 		$email_var = str_replace('.','--', $email);

 		$this->load->library('email');
 		$this->email->from('belajar_codeigniter@mail.com','Rifqi Arief Rahman');
 		$this->email->to($email);
 		$this->email->subject('konfirmasi register aplikasi auth');
 		$this->email->message("
 			<a href ='http://localhost/ci_login_register/verify/$email_var/$token'>Klik disini,</a>
 			untuk konfirmasi registrasi<br>
 		");
 		$this->email->set_mailtype('html');
 		$this->email->send();

 	}

 	public function verify_register($email,$token)
 	{
 		$email_var = str_replace('--', '.', $email);

 		$user = $this->user_model->get_user('email',$email_var);

 		//validasi email dan token
 		if($user === false){
 			die('data tidak tersedia');
 		}

 		if($user['token'] !== $token){
 			die('token tidak valid');
 		}

 		//update user role ke 1
 		$this->user_model->update_role($user['id'], 1);

 		$_SESSION['user_id']    = $user['id'];
 		$_SESSION['logged_in']  = true;

 		redirect('profile');
 	}

 	public function login()
 	{
 		if ($this->user_model->is_loggedIn()){
 			redirect('profile');
 		}

 		$this->form_validation->set_rules('txtEmail','Email','required|callback_checkEmail|callback_checkRole');
 		$this->form_validation->set_rules('txtPass','Password','required|callback_checkPassword');

 		if ($this->form_validation->run() === false){
 			//$this->load->view('layouts/header');
	 		$this->load->view('auth/login');
 			$this->load->view('layouts/footer');
 		}else{
	 		$data = $this->user_model->get_user('email' , $this->input->post('txtEmail'));

	 		$_SESSION['user_id']   = $data['id'];
	 		$_SESSION['logged_in'] = true;


	 		redirect('profile');
 		}
 	}

 	public function checkEmail($email)
 	{
 		if(!$this->user_model->get_user('email',$email)){
 			$this->form_validation->set_message('checkEmail','user belum terdaftar');
 			  
 			return false;
 		}

 		return true;
 	}

 	public function checkPassword($password)
 	{ 
 		$data = $this->user_model->get_user('email',$this->input->post('txtEmail'));

 		if(!$this->user_model->check_password($data['email'],$password)){
 			$this->form_validation->set_message('checkPassword','Password salah');
 			return false;
 		}
 		return true;
 	}

 	public function checkRole($email)
 	{
 		$data =  $this->user_model->get_user('email',$email);

 		if ($data['role'] == 0){
 			$this->form_validation->set_message('checkRole', 'Anda belum aktifasi akun melalui pesan konfirmasi yg kami kirim ke email anda');
 			return false;
 		}
 		return true;
 	}

 	public function logout()
 	{
 		unset($_SESSION['user_id'],$_SESSION['logged_in']);
 		redirect('login');
 	}
 }
   