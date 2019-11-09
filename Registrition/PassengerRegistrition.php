<?php
     
     $con=mysqli_connect('localhost','root','','airline');
   
   if(!$con)
   {
   	echo "Not Connected to server";
   }

   if(!mysqli_select_db($con,'airline'))
   {
   	echo "Database not select";
   }


   $Passport_No=$_POST['Passport_No'];
   $Country_id=$_POST['Country_id'];
   $DOE=$_POST['DOE'];
  

   $sql="Insert into passenger ( Passport_No,Country_id,DOE)
           VALUES
            ('$Passport_No','$Country_id','$DOE')";

      if(!mysqli_query($con,$sql))
      {
      	echo "Not Inserted";
      }

      else{
      	echo "Inserted";
      }

      header("refresh:2; url=Registrition.php");

      

?>