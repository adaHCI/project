<?php
  require_once("conn.php");
  $searchBy = $_POST['searchBy'];
  $sql = "SELECT software.bibID, software.name, software.year, software.language, software.publisher,items.stock
          FROM software
          LEFT JOIN items
          ON software.bibID = items.bibID";
  if(!(!isset($_POST['keyWord'])|strlen($_POST['keyWord']) == 0)){
    $sql .= " WHERE software." . $searchBy . " LIKE '%" . $_POST['keyWord'] . "%';";
  }
  require_once("printSoftwareData.php");
?>
