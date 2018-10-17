<?php
  require_once("conn.php");
  $sql = "SELECT bibID, name, year, language, publisher
  FROM software;";
  $rs = mysqli_query($conn, $sql) or die(mysqli_error($conn));
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Language</th><th>Publisher</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          printf("<tr><td><div class='popup'>%s</div></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>",
          $rc['bibID'],$rc['name'],$rc['year'],$rc['language'],$rc['publisher']);
        }
  echo "</table>";
?>
