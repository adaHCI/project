<?php
if($isFirstLogin == 1){
  echo "<br/>";
  echo "<div class='contentBorder'>";
  echo "First Login detected... Please change your password first.";
  echo "<meta http-equiv=\"refresh\" content=\"3; URL='../$userType/profile.php'\"/> ";
  echo "</div>";
  exit(0);
}
?>
