
<?php include('dbcon.php'); ?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="http://localhost/airline/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 <a class="navbar-brand" href="http://localhost/airline/">
    <img src="http://localhost/airline/img/cooltext320905888989622.png" alt="Nsu Airline Reservation">
  </a>

 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   <span class="navbar-toggler-icon"></span>
 </button>

 <div class="collapse navbar-collapse" id="navbarSupportedContent">
   <ul class="navbar-nav mr-auto">
     <li class="nav-item active">
       <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="http://localhost/airline/registrition/registrition.php">SignUp</a>
     </li>
     <li class="nav-item dropdown">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Dropdown
       </a>
       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <a class="dropdown-item" href="#">Action</a>
         <a class="dropdown-item" href="#">Another action</a>
         <div class="dropdown-divider"></div>
         <a class="dropdown-item" href="#">Something else here</a>
       </div>
     </li>
     <li class="nav-item">
       <a class="nav-link disabled" href="http://localhost/airline/login/login.php">Agents</a>
     </li>
   </ul>
   <form class="form-inline my-2 my-lg-0">
     <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
   </form>
 </div>
</nav>



<div class="form-wrapper bg-primary">
  
  <form action="#" method="post">
    <h3>Login here</h3>
	
    <div class="form-item">
		<input type="text" name="user" required="required" placeholder="Membership_Number" autofocus required></input>
    </div>
    
    <div class="form-item">
		<input type="password" name="pass" required="required" placeholder="Licence_Number" required></input>
    </div>
    
    <div class="button-panel">
		<input type="submit" class="button" title="Log In" name="login" value="Agent"></input>
    </div>
  </form>
  <?php
	if (isset($_POST['login']))
		{
			$username = mysqli_real_escape_string($con, $_POST['user']);
			$password = mysqli_real_escape_string($con, $_POST['pass']);
			
			$query 		= mysqli_query($con, "SELECT * FROM agents WHERE  Licence_Number='$password' and Agent_Membership_Number='$username'");
			$row		= mysqli_fetch_array($query);
			$num_row 	= mysqli_num_rows($query);
			
			if ($num_row > 0) 
				{			
					
					header('location:http://localhost/airline/airline_cse311/Agent.php');
					
				}
			else
				{
					echo 'Invalid Username and Password Combination';
				}
		}
  ?>
 
  
</div>



</body>

</html>