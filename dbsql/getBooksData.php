<?php
  require_once("conn.php");
  $sql = "SELECT bibID, name, author, year, language
  FROM books;";
  $rs = mysqli_query($conn, $sql) or die(mysqli_error($conn));
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Author</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          printf(
            "<tr><td>%s<img class='popup' value='%s'
            src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td></tr>"
            ,$rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['author']);
        }
  echo "</table>";
?>
