<?php
  require_once("conn.php");
  $searchBy = $_POST['searchBy'];
  $sql = "SELECT magazines.bibID, magazines.name, magazines.frequency, magazines.placeOfPublication, magazines.year, magazines.language,items.stock
          FROM magazines
          LEFT JOIN items
          ON magazines.bibID = items.bibID";

  if(!(!isset($_POST['keyWord'])|strlen($_POST['keyWord']) == 0)){
    $sql .= " WHERE magazines." . $searchBy . " LIKE '%" . $_POST['keyWord'] . "%';";
  }
  require_once("printMagazinesData.php");
?>
