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
<div class="adminpaneltxt" id="adminPanel">
    <h1>Welcome to Admin panelmr/ms.... <span style="color: red;"><?php echo $username; ?></span></h1><br>
    <p>Authorized user only</p>
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
