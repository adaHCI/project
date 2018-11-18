<?php
  require_once("conn.php");
  $sql = "SELECT map.bibID, map.name, map.year, map.language, map.placeOfPublication,items.userID
  FROM map,items
  WHERE map.bibID = items.bibID;";
  $rs = mysqli_query($conn, $sql) or die(mysqli_error($conn));
  echo "<fieldset id='map'><legend align='left'>Map</legend>";
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Language</th><th>Place Of Publication</th><th>available?</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          echo "<tr>";
          printf("<td>%s<img class='popup' value='%s'
          src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
          $rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['language'],$rc['placeOfPublication']);
          if($rc['userID'] != null){
            echo "<td><img src='../images/crossbox.png' width='20px' height='20px'/></td>";
          }else{
            echo "<td><img src='../images/tickbox.png' width='20px' height='20px'/></td>";
          }
          echo "</tr>";
        }
  echo "</table>";
  echo "</fieldset>";
?>
