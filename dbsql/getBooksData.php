<?php
  require_once("conn.php");
  $searchBy = $_POST['searchBy'];
  $sql = "SELECT books.bibID, books.name, books.author,books.year,books.language,items.stock
          FROM books
          LEFT JOIN items
          ON books.bibID = items.bibID";

  if(!(!isset($_POST['keyWord'])|strlen($_POST['keyWord']) == 0)){
      $sql .= " WHERE books." . $searchBy . " LIKE '%" . $_POST['keyWord'] . "%';";
  }
  require_once("printBooksData.php");
?>
