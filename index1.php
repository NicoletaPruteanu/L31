<!DOCTYPE html>
<html lang="en">
<head>
    <title>simple form</title>
</head>
<body>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
Name:<input type="text" name="name">
<br><br>
Surname:<input type="text" name="surname">
<br><br>
Email:<input type="text" name="email">
<br><br>
Impact Course:<input type="text" name="impactcourse">
<br><br>
Additional Info:<input type="text" name="info" cols="50" rows="5"></textare>
<br><br>
<input type="submit">
</form>
<?php
$name=$surname=$email=$impactcourse=$info=""
?>
     <?php
     if ($_SERVER["REQUEST_METHOD"]=="POST"){
        $name=$_REQUEST['fname'];
        if (empty($name)) {
            echo"Name is empty";
        }else{
            echo $name;
        }
     }
     ?>
</form>
</body>
</html>