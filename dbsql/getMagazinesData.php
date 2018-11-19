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
  $rs = mysqli_query($conn,$sql) or die(mysqli_error($conn));
  echo "<fieldset id='magazines'><legend align='left'>Magazines</legend>";
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Place of Publication</th><th>frequency</th><th>language</th><th>available?</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          echo "<tr>";
          printf("<td>%s<img class='popup' value='%s'
          src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
          $rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['placeOfPublication'],$rc['frequency'],$rc['language']);
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
