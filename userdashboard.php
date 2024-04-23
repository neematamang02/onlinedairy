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


            <li><a href="#">customer order</a></li>
            <li><a href="aboutus.php">About us</a></li>
            <li><a href="contactus.php">Contact us</a></li>

        </ul>
    </nav>


<?php
      if($user_id == ''){
         echo '<p class="empty">please login to see your orders</p>';
      }else{
          $select_profile = "SELECT * FROM `registerd_users` WHERE id ='$user_id'";
            
        //     if($select_profile->rowCount() > 0){
        //     $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
        //  }  

        $result=mysqli_query($conn,$select_profile);
        if(mysqli_num_rows($result)>0){
            $fetch_profile=mysqli_fetch_assoc($result);
        }
        };
   ?>
   <?php          
            
         ?>

<div class="dashboard">
  
  <div class="dashboard-content">
  <h3>Welcome<br><?= $fetch_profile["full_name"]; ?></h3>
    <ul>
      <hr>
      <li><a href="logout.php?logout=<?php echo $user_id ?>"><button class="logout">Logout</button></a></li>
    
    </ul>


  </div>


  <div class="dashboard-details">
    <h3>My Orders</h3>

    <hr> 
    <section class="orders">

   <div class="box-container">

   <?php
      if($user_id == ''){
         echo '<p class="empty">please login to see your orders</p>';
      }else{
         $select_orders ="SELECT * FROM `billing_details` WHERE user_id = '$user_id'";
            $result=mysqli_query($conn,$select_orders);
            

            if(mysqli_num_rows($result)>0)
            {
                while($fetch_orders=mysqli_fetch_assoc($result)) {
                  $product_id=$fetch_orders['id'];
                  $select_product_id="SELECT * FROM  `orders` WHERE b_id='$product_id'";
                  $produt_result=mysqli_query($conn,$select_product_id);
                  if(mysqli_num_rows($produt_result)>0) {
                    while($fetch_qty=mysqli_fetch_assoc($produt_result))
                    {

                  
                  
                 
            
   ?>
   <div class="order-details">
    <table border="0" cellspacing="0">
    <thead>
      <tr>
        <th>Customer</th>
        <th>Order</th>
        <th>Delivery Date</th>
        <th>Customer Address</th>
        <th>Delivery pricing</th>
        <th>Delivery Status</th>
        <th>Payment Method</th>
      </tr>
    </thead>

    <tbody>
      <tr>
        <td><p><?= $fetch_orders['f_name']; ?> <?= $fetch_orders['l_name']; ?></p></td>
        <td><p><?= $fetch_qty['qty']; ?></p></td>


        <td><p><?= $fetch_orders['placed_on']; ?></p></td>
        <td><p><?= $fetch_orders['address']; ?></p></td>
        <td><p>$<?= $fetch_orders['total_price']; ?>/-</p></td>
        <td><p><span style="color:<?php if($fetch_orders['payment_status'] == 'pending'){ echo 'red'; }else{ echo 'green'; }; ?>"><?= $fetch_orders['payment_status']; ?></span></p></td>
        <td>E-sewa</td>
      </tr>
    </tbody>

    </table>

   </div>
   <?php

                    }
                  }
      }
      }else{
         echo '<p class="empty">no orders placed yet!</p>';
      }
      }
   ?>

   </div>
</section>
    

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
        </div>
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
