<?php

include "../connection/connect.php";

session_start();


$admin_id = $_SESSION['adminid'];

if(!isset($admin_id)){
   header('location:adminlogin.php');
} 
?>
<!DOCTYPE html>
<html lang="en">
<head>  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../css/adminpagestyle.css">
</head>
<body>
<div class="header">
    <div class="h-left"><b><a href="adminpanel.php">Online dairy <br>Admin Panel</a></b></div>
    <form method="post" class="logout">
    <h6>Welcome, <span style="grey;"><?php echo $username; ?></span><h6>
        <button name="logout" class="h-right">Logout</button>
    </form>
</div>
<div class="adminsides">
<div class="sidebar" id="sidebar">
<a class="addproduct" href="trackorder.php">Track orders</a>
<hr>
    <a class="addproduct" href="productmanage.php">Product Management</a>
</div>

<div class="adminpaneltxt" id="adminPanel">
<div class="addproduct-box">
        <div class="addproduct-form">
         
            <form action="" method="post" enctype="multipart/form-data">
                <div class="username">
                    <br>
                    <h4>Product name</h4>
                    <input type="text" name="name" placeholder="Enter product name" required class="input-box">

                </div>
                <div class="username">
                    <br>
                    <h4>Product manufacturing date</h4>
                    <input type="text" name="mdate" placeholder="Manufacturing date" required class="input-box">

                </div>
                <div class="username">
                    <br>
                    <h4>Product expiry date</h4>
                    <input type="text" name="edate" class="input-box" required placeholder="Expiry date">

                </div>
                <div class="username">
                    <br>
                    <h4>Production cost</h4>
                    <input type="number" name="pcost" placeholder="Production cost"  required class="input-box">

                </div>
                <div class="username">
                    <br>
                    <h4>Selling price</h4>
                    <input type="text" name="selling" placeholder="Selling price" required class="input-box">
                    
                    

                </div>
                <br>
                <button class="login-btn" name="add_product">SUBMIT</button>
            </form>
        </div>


        <div  class="product-info">
            <table border="1" cellspacing="0">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Product MFD</th>
                        <th>Product EXP</th>
                        <th>Production cost</th>
                        <th>Selling price</th>
                    </tr>
                </thead>
            </table>

        </div>
    </div>

</div>
</div>


<?php 
    if(isset($_POST['logout'])){
        session_destroy();
        header("location: vendorlogin.php");
    }
    ?>
<script>
    function previewImage(event) {
        var reader = new FileReader();
        reader.onload = function(){
            var output = document.getElementById('preview');
            output.src = reader.result;
        }
        reader.readAsDataURL(event.target.files[0]);
    }
</script>

</body>
</html>
