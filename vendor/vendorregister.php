<?php

include "../connection/connect.php";

session_start();
if(isset($_POST['signup']))
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $cpass = $_POST['cpass'];

    // Check if passwords match
    if ($pass !== $cpass) {
        echo "Passwords do not match";
        exit(); // Exit the script if passwords don't match
    }

    // Hash the password
    $hashpass = password_hash($pass, PASSWORD_DEFAULT);

    // Check if email already exists
    $sql = "SELECT email FROM `registerd_vendor` WHERE email='$email'";
    $res = mysqli_query($conn, $sql);

    if (!$res || mysqli_num_rows($res) > 0)
    {
        echo "Email already exists";
    }
    else
    {
        // Insert the data
        $sql = "INSERT INTO `registerd_vendor` (username, email, pass) VALUES ('$name','$email','$hashpass')";
        $res = mysqli_query($conn, $sql);
        if ($res)
        {
            echo "Data inserted successfully";
        }
        else
        {
            echo "Error in data insertion";
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    
    <title>vendor login</title>
</head>
<body>


  
<div class="register-page">
  
    <div class="welcoming">
    <h4>Create your seller account</h4>
    
    <p>Already member?<span class="register-btn"><a href="vendorlogin.php">Login</a></span> here</p>
    </div>


    <div class="containerbox">
  <div class="wrapper">
    <div class="titlelogo">
        <h1>Online Dairy</h1>

    </div>

    <h2>Sign Up</h2>
    <form action="" method="post">
    <div class="error-box">
        <?php
        if (isset($message)) {
            foreach ($message as $msg) {
                echo '<p>' . $msg . '</p>';
            }
        }
        ?>
    </div>
    <div class="input-box">
        <input type="text" placeholder="Enter your username" name="name" required>
    </div>
    <div class="input-box">
        <input type="text" placeholder="Enter your email" name="email" required>
    </div>
    <div class="input-box">
        <input type="password" placeholder="Create password" name="pass" required>
    </div>
    <div class="input-box">
        <input type="password" placeholder="Confirm password" name="cpass" required>
    </div>
    <div class="policy">
        <input type="checkbox">
        <h3>I accept all terms & condition</h3>
    </div>
    <div class="input-box button">
        <input type="Submit" value="Register Now" name="signup">
    </div>
    <div class="text">
        <h3>Already have an account? <a href="vendorlogin.php">Login now</a></h3>
    </div>
    </form>
  </div>
    </div>

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
        <li>Nima Tamang</li>
        <li>Rozim Maharjan</li>



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