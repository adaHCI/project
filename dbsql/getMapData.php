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
  $rs = mysqli_query($conn, $sql) or die(mysqli_error($conn));
  echo "<fieldset id='map'><legend align='left'>Map</legend>";
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Language</th><th>Place Of Publication</th><th>available?</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          echo "<tr>";
          printf("<td>%s<img class='popup' value='%s'
          src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
          $rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['language'],$rc['placeOfPublication']);
          if($rc['stock'] == 0){
            echo "<td><img src='../images/crossbox.png' width='20px' height='20px'/></td>";
          }else{
            echo "<td><img style='float:left;' src='../images/tickbox.png' width='20px' height='20px'/>";
            echo "<div style='float: left;' id='submit'>";
            echo "<img alt='".$rc['bibID']."' src='../images/reserveIcon.png' width='20px' height='20px'/>";
            echo "</div>";
            echo "</td>";
          }
          echo "</tr>";
        }
  echo "</table>";
  echo "</fieldset>";
?>
