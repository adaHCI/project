<?php
  require_once("../../sqlHandling/conn.php");
  $bookid = "";
  $sql = "SELECT bibID FROM reserve WHERE reserveID = $_POST[reserveID];";
  $rs = mysqli_query($conn,$sql);
  $rc = mysqli_fetch_array($rs);
  $bookid = $rc['bibID'];

  $sql = "UPDATE items SET stock = stock + 1 WHERE bibID = $bookid;";
  mysqli_query($conn,$sql);
  $sql = "DELETE FROM reserve WHERE reserveID = $_POST[reserveID]";
  mysqli_query($conn,$sql);
  $sql = "UPDATE $_POST[userType] SET currReserve = currReserve - 1 WHERE userID = $_POST[userID];";
  mysqli_query($conn,$sql);
  echo "cancel successfully!";


?>
