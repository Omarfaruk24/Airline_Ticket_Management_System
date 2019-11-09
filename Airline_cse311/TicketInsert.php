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


   $Ticket_id=$_POST['Ticket_id'];
   $Ticket_Price=$_POST['Ticket_Price'];
   $Passport_no=$_POST['Passport_no'];
   $Flight_id=$_POST['Flight_id'];
   $Agent_M=$_POST['Agent_M'];

   $sql="Insert into Ticket ( Ticket_ID,Ticket_Price,Passport_no,Flight_id,Agent_Membership_Number)
     VALUES
      ('$Ticket_id','$Ticket_Price','$Passport_no','$Flight_id','$Agent_M')";

      if(!mysqli_query($con,$sql))
      {
      	echo "Not Inserted";
      }

      else{
      	echo "Inserted";
      }

      header("refresh:2; url=Ticket.php");

      

?>