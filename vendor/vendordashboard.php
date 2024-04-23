<?php

include "../connection/connect.php";


session_start();
if(isset($_SESSION['sellerid'])) {
    $sellerid = $_SESSION['sellerid'];
    $sql = "SELECT * FROM `registerd_vendor` WHERE id='$sellerid'";
    $res = mysqli_query($conn, $sql);
    if(mysqli_num_rows($res) > 0) {
        $row = mysqli_fetch_assoc($res);
        $username = $row['username']; // Fetching username from the database
    }
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
    <div class="h-left"><b><a href="#">Online dairy <br>seller center</a>
        
    </b></div>
<div class="spacing">

<form method="post" class="logout">
    <h6>Welcome, <span style="grey;"><?php echo $username; ?></span></h6>
        <button name="logout" class="h-right">Logout</button>
    </form>
</div>
</div>
<div class="adminsides">
<div class="sidebar" id="sidebar">
    <a class="addproduct" href="addproduct.php">Add Product</a>
    
    <a class="addproduct" href="productlist.php">Product List</a>
    
    <a class="addproduct" href="ordermanage.php">Manage order</a>
    
    
    

    
    
    
</div>

<div class="adminpaneltxt" id="adminPanel">
    <h1>Welcome to VenderPage mr/ms.... <span style="color: red;"><?php echo $username; ?></span></h1><br>
    <p>Authorized user only</p>
</div>

</div>
<?php 
    if(isset($_POST['logout'])){
        session_destroy();
        header("location: vendorlogin.php");
    }
    ?>
</body>
</html>
