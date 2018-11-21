<?php
//sql ready! $conn ready! otherwise. bugggggg!
$rs = mysqli_query($conn,$sql) or die(mysqli_error($conn));
if(mysqli_num_rows($rs) == 0){
  exit(0);
}
echo "<fieldset id='magazines'><legend align='left'>Magazines</legend>";
echo "<table class='myTable'>
      <tr><th>BibID</th><th>Name</th><th>Year</th><th>Place of Publication</th><th>frequency</th><th>language</th><th>available?</th></tr>";
      while($rc = mysqli_fetch_array($rs)){
        echo "<tr>";
        printf("<td>%s<img class='popup' value='%s'
        src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
        $rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['placeOfPublication'],$rc['frequency'],$rc['language']);
        echo "<td>";
        echo "<div style='float: left;cursor: pointer;' id='favourite'>";
        echo "<img alt='".$rc['bibID']."' src='../images/heart.png' width='20px' height='20px'/>";
        echo "</div>";
        echo "<div style='float: left;cursor: pointer;' id='delFavourite'>";
        echo "<img alt='".$rc['bibID']."' src='../images/brokenheart.png' width='20px' height='20px'/>";
        echo "</div>";
          if($rc['stock'] == 0){
            echo "<img style='float:left;' src='../images/crossbox.png' width='20px' height='20px'/>";

          }else{
            echo "<img style='float:left;' src='../images/tickbox.png' width='20px' height='20px'/>";
            echo "<div style='float: left;cursor: pointer;' id='submit'>";
            echo "<img alt='".$rc['bibID']."' src='../images/reserveIcon.png' width='20px' height='20px'/>";
            echo "</div>";
          }

        echo "</td>";
        echo "</tr>";
      }
echo "</table>";
echo "</fieldset>";
?>
