<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Profile</title>
	<link rel="stylesheet" href="">
	<style type="text/css" media="screen">
		.judul{
			text-align: center;
			font-family: sans-serif;
			font-size: 40px;
			font-weight: bold;
		}
		
		.user{
			font-family: serif;
			font-size: 30px;
			font-weight: normal;
		}
	</style>
</head>
<body>


	<div class = judul>
		WELCOME,
		<div class="user">
			<?= $user['email']; ?>
			<br><br> 
		</div>
	</div>

	<?php 
		var_dump($user);
	 ?>
</body>
</html>
