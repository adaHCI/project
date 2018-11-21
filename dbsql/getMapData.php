<?php
  require_once("conn.php");
  $searchBy = $_POST['searchBy'];
  $sql = "SELECT map.bibID, map.name, map.year, map.language, map.placeOfPublication,items.stock
          FROM map
          LEFT JOIN items
          ON map.bibID = items.bibID";
  if(!(!isset($_POST['keyWord'])|strlen($_POST['keyWord']) == 0)){
    $sql .= " WHERE map." . $searchBy . " LIKE '%" . $_POST['keyWord'] . "%';";
  }
  require_once("printMapData.php");
?>
