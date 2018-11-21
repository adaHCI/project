<?php
  require_once("../../sqlHandling/conn.php");
  $sql = "SELECT intro FROM items WHERE bibID = $_POST[bibID]";
  $rs = mysqli_query($conn,$sql);
  $rc = mysqli_fetch_array($rs);
  if(is_null($rc['intro'])){
    echo "This item have not introduction yet!";
  }else{
  echo $rc['intro'];
  }
?>
