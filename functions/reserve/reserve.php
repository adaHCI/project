<?php
  require_once("../../sqlHandling/conn.php");
  /*userType*/
  $sql = "SELECT currReserve, maxReserve FROM $_POST[userType] WHERE userID = $_POST[userID]";
  $rs = mysqli_query($conn,$sql);
  if(mysqli_num_rows($rs) == 1){
    $rc = mysqli_fetch_array($rs);
    if($rc['currReserve'] >= $rc['maxReserve']){
      echo "You have already reach the maximun amount which you can reserve: $rc[currReserve]";
      exit(0);
    }

    $sql = "INSERT INTO reserve (bibID,userID) VALUES ('$_POST[bibID]',$_POST[userID])";
    mysqli_query($conn,$sql);
    $sql = "UPDATE items SET stock = stock - 1 WHERE items.bibID = '$_POST[bibID]'";
    mysqli_query($conn,$sql);
    $sql = "UPDATE $_POST[userType] SET currReserve = currReserve + 1 WHERE userID = $_POST[userID]";
    mysqli_query($conn,$sql);
    echo "You have successfully reserved this book!\n";
    echo "Please take it within 3 days!";
  }


?>
