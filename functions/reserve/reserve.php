<?php
  require_once("../../sqlHandling/conn.php");
  $sql = "INSERT INTO reserve (bibID,userID) VALUES ('$_POST[bibID]',$_POST[userID])";
  $rs = mysqli_query($conn,$sql);
  $sql = "UPDATE items SET stock = stock - 1 WHERE items.bibID = '$_POST[bibID]'";
  $rs = mysqli_query($conn,$sql);
?>
