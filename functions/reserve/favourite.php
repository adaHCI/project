<?php
require_once("../../sqlHandling/conn.php");
/*userType*/
if($_POST['action'] == "add"){
  $sql = "SELECT * FROM favourite WHERE bibID = '$_POST[bibID]' AND userID = $_POST[userID];";
  $rs = mysqli_query($conn,$sql) or die(mysqli_error($conn));
  if(mysqli_num_rows($rs) == 0){
    $sql = "INSERT INTO favourite (bibID,userID) VALUES ('$_POST[bibID]',$_POST[userID]);";
    mysqli_query($conn,$sql);
    echo "You have added this book to your favourite!";
  }else{
    echo "You have already added this book before!";
  }
}else if($_POST['action'] == "delete"){
  $sql = "DELETE FROM favourite WHERE bibID = '$_POST[bibID]' AND userID = $_POST[userID];";
  $rs = mysqli_query($conn,$sql) or die(mysqli_error($conn));
  echo "You have removed this book from your favourite!";
}else if($_POST['action'] == "get"){
  echo "<fieldset><legend align='left'>favourite</legend>";
  $sql = "SELECT books.bibID, books.name, books.author,books.year,books.language,items.stock
          FROM books
          LEFT JOIN items
          ON books.bibID = items.bibID
          INNER JOIN favourite
          ON books.bibID = favourite.bibID
          WHERE favourite.userID = $_POST[userID];";
  require_once("../../dbsql/printBooksData.php");
  $sql = "SELECT magazines.bibID, magazines.name, magazines.frequency, magazines.placeOfPublication, magazines.year, magazines.language,items.stock
          FROM magazines
          LEFT JOIN items
          ON magazines.bibID = items.bibID
          INNER JOIN favourite
          ON magazines.bibID = favourite.bibID
          WHERE favourite.userID = $_POST[userID];";
  require_once("../../dbsql/printMagazinesData.php");
  $sql = "SELECT map.bibID, map.name, map.year, map.language, map.placeOfPublication,items.stock
          FROM map
          LEFT JOIN items
          ON map.bibID = items.bibID
          INNER JOIN favourite
          ON map.bibID = favourite.bibID
          WHERE favourite.userID = $_POST[userID];";
  require_once("../../dbsql/printMapData.php");
  $sql = "SELECT software.bibID, software.name, software.year, software.language, software.publisher,items.stock
          FROM software
          LEFT JOIN items
          ON software.bibID = items.bibID
          INNER JOIN favourite
          ON software.bibID = favourite.bibID
          WHERE favourite.userID = $_POST[userID];";
  require_once("../../dbsql/printSoftwareData.php");
  echo "</fieldset>";
}
?>
