<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Airline Reservation System</title>

  <link rel="stylesheet" href="http://localhost/airline/css/bootstrap.min.css">
  


</head>
<body>






 <!-- header -->
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
       <a class="nav-link" href="http://localhost/airline/">Home <span class="sr-only">(current)</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="http://localhost/airline/airline_cse311/passenger.php">Passenger</a>
     </li>
     
     <li class="nav-item">
       <a class="nav-link disabled" href="http://localhost/airline/login/login.php">Agents</a>
     </li>
   </ul>
   
 </div>
</nav>











<form action="PassengerRegistrition.php" method="post">

<div class="form-group">
 Passport Number:
   <input type="text" class="form-control"  name="Passport_No">
</div>

    <div class="form-group">
  Country_ID : <input type="text" class="form-control"  name="Country_id">
  </div>


  <div class="form-group">
   Date Of Expire : <input type="text" class="form-control"  name="DOE">
   </div>

   
             <input type="submit" class="btn btn-primary" value="Registrition">
  


</form>













 <!-- footer -->

  <style>
  .footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: red;
    color: white;
    text-align: center;
  }
  </style>

  <div class="footer">
    <p>Nsu Airline Reservation</p>



  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

  <scrpt src="js/bootstrap.min.js"></scrpt>


  </div>
</body>
</html>