<nav>
	<ul>
		<li><a href="register">Register</a></li>
		<?php 
			$link;
			if(isset($_SESSION['logged_in'])){
				$link = 'logout';
			}else{
				$link = 'login';
			}
		 ?>

		<li><a href="<?= $link ?>"><?= $link ?></a></li>
	</ul>
</nav> 
<br>