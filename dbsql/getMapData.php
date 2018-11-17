<?php
  require_once("conn.php");
  $sql = "SELECT bibID, name, year, language, placeOfPublication
  FROM map;";
  $rs = mysqli_query($conn, $sql) or die(mysqli_error($conn));
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Language</th><th>Place Of Publication</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          printf("<tr><td>%s<img class='popup' value='%s'
          src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>",
          $rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['language'],$rc['placeOfPublication']);
        }
  echo "</table>";
?>
