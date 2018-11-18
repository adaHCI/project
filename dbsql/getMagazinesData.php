<?php
  require_once("conn.php");
  $sql = "SELECT magazines.bibID, magazines.name, magazines.frequency, magazines.placeOfPublication, magazines.year, magazines.language,reserve.date
  FROM magazines
  LEFT JOIN reserve
  ON magazines.bibID = reserve.bibID;";
  $rs = mysqli_query($conn,$sql) or die(mysqli_error($conn));
  echo "<fieldset id='magazines'><legend align='left'>Magazines</legend>";
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Place of Publication</th><th>frequency</th><th>language</th><th>available?</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          echo "<tr>";
          printf("<td>%s<img class='popup' value='%s'
          src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
          $rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['placeOfPublication'],$rc['frequency'],$rc['language']);
          if($rc['date'] != null){
            echo "<td><img src='../images/crossbox.png' width='20px' height='20px'/></td>";
          }else{
            echo "<td><img src='../images/tickbox.png' width='20px' height='20px'/>";
            echo "<a href='reserve.php?bibID=".$rc['bibID']."'>";
            echo "<img src='../images/reserveIcon.png' width='20px' height='20px'/>";
            echo "</a>";
            echo "</td>";
          }
          echo "</tr>";
        }
  echo "</table>";
  echo "</fieldset>";
?>
