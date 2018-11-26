<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Model extends CI_Model {

	public function __construct()
	{
		parent::__construct(); 
	}

	public function insert_user()
	{
		$this->load->helper('string');//untuk random string

		 $_SESSION['token'] = random_string('alnum',16);

		 $data = [
		 	'email' => $this->input->post('txtEmail'),
		 	'password' => password_hash($this->input->post('txtPass'),PASSWORD_BCRYPT),
		 	'token' => $_SESSION['token']
		 ];

		$this->db->insert('users',$data);
	}

	public function get_user($key,$value)
	{
		$query = $this->db->get_where('users', array($key=>$value));
		if(!empty($query->row_array())){
			return $query->row_array();
		}

		return false;
	}

	public function update_role($id,$role_no)
	{
		$data = array ('role' => $role_no);
		$this->db->where('id', $id);
		return $this->db->update('users', $data);
	}

	public function is_loggedIn()
	{
		if (!isset($_SESSION['logged_in'])){
			return false;
		}

		return true; 
	}

	public function check_password($email,$password)
	{
		$hash =  $this->get_user('email',$email)['password'];

		if (password_verify($password, $hash)){
			return true;
		}
		return false;
	}
}