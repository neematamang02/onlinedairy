<?php

include "connection/connect.php";

session_start();

if(isset($_SESSION['userid'])){
   $user_id = $_SESSION['userid'];
}else{
   $user_id = '';
   header('location:userlogin.php');
};
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    
    <title>Online dairy</title>
</head>
<body>
   <?php include 'header.php';?>

   
<nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="userpage.php">customer order</a></li>
            <li><a href="aboutus.php">About us</a></li>
            <li><a href="contactus.php">Contact us </a></li>

        </ul>
    </nav>
    


   <div class="ordersuccessful">

   <h1>THANK YOU FOR ORDERING</h1>
   <p>Your Order has been successfully placed</p>
   <img src="icons/icons8-tick-tick-240.png" alt="successful tick">

   </div>
   


 <br>


 <footer>
        <div class="flex-footer">
        <div class="footer-content">
            <br>
            <div class="socialmedia">
                <a href="#"><i class="fa-brands fa-facebook fa-2xl"></i></a>
                <a href="#"><i class="fa-brands fa-instagram fa-2xl"></i></a>
                <a href="#"><i class="fa-brands fa-twitter fa-2xl"></i></a>

            </div>
            <br>
            
            <div class="contact">
                <div class="number">
                    <i class="fa-solid fa-phone"></i>
                    <h5>+977 0000000000</h5>
                    <div class="address">
                        <i class="fa-solid fa-envelope"></i>
                        <h5>onlinedairy@gmail.com</h5>

                    </div>

                </div>

            </div>
            <h1>ONLINE DAIRY</h1>

        </div>


        <div class="team-members-list">

        <h3>Team Members</h3>
        <ul>
            
        
        </ul>


        </div>
        <!--/.footer-gray-->




        </div>
        </div>

    </footer>
    

    <div class="copyright">
    <h4>&copy; copyright code 2023/padmashree 4th sem project</h4>


    </div>
<script src="https://kit.fontawesome.com/927b7fa170.js" crossorigin="anonymous"></script>
<script src="script.js"></script>
</body>
</html>