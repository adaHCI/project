<?php
  require_once("../../sqlHandling/conn.php");
  function getRecordString($sql,$conn){
    $strRecord = "Empty";
    $rs = mysqli_query($conn,$sql);
    if(mysqli_num_rows($rs) > 0){
      $strRecord = "<table class='myTable' border'1'>";
      $strRecord .="<tr><th>bibID</th><th>name</th><th>reserve date</th></tr>";
      while($rc = mysqli_fetch_array($rs)){
        $strDate = date('m/d/Y', strtotime($rc['date']));
        $strRecord .= "<tr>";
        $strRecord .= "<td>" .$rc['bibID'];
        $strRecord .= "<img class='popup' value='".$rc['bibID']."' src='../images/show.png' width='20px' height='20px'/>";
        $strRecord .= "</td>";
        $strRecord .= "<td>" .$rc['name'] ."</td>";
        $strRecord .= "<td>" .$strDate;
        if(date('m/d/Y') == $strDate){
          $strRecord .= "<img class='cancel' value='".$rc['reserveID']."' src='../images/crossbox.png' width='20px' height='20px'/>";
        }
        $strRecord .= "</td>";
        $strRecord .= "</tr>";
      }
      $strRecord .= "</table>";
    }
    return $strRecord;
  }
  $userID = $_POST['userID'];

  $sql = "SELECT books.bibID,books.name,reserve.date,reserve.reserveID
          FROM reserve,books
          WHERE reserve.bibID = books.bibID
          AND reserve.userID = $userID";
  $bookRecord = getRecordString($sql,$conn);

  $sql = "SELECT magazines.bibID,magazines.name,reserve.date,reserve.reserveID
          FROM reserve,magazines
          WHERE reserve.bibID = magazines.bibID
          AND reserve.userID = $userID";
  $magazineRecord = getRecordString($sql,$conn);

  $sql = "SELECT software.bibID,software.name,reserve.date,reserve.reserveID
          FROM reserve,software
          WHERE reserve.bibID = software.bibID
          AND reserve.userID = $userID";
  $softwareRecord = getRecordString($sql,$conn);

  $sql = "SELECT map.bibID,map.name,reserve.date,reserve.reserveID
          FROM reserve,map
          WHERE reserve.bibID = map.bibID
          AND reserve.userID = $userID";
  $mapRecord = getRecordString($sql,$conn);

  echo "<h3>Reserve Records</h3>";

  echo "<fieldset id='books'><legend align='left'>Books</legend>";
  echo $bookRecord;
  echo "</fieldset>";
  echo "<fieldset id='magazines'><legend align='left'>Magazines</legend>";
  echo $magazineRecord;
  echo "</fieldset>";
  echo "<fieldset id='software'><legend align='left'>Software</legend>";
  echo $softwareRecord;
  echo "</fieldset>";
  echo "<fieldset id='map'><legend align='left'>Map</legend>";
  echo $mapRecord;
  echo "</fieldset>";
?>
