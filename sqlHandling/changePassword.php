<link rel="stylesheet" type="text/css" media="screen" href="../css/bg.css"/>
<?php
/*getting editOldPwd editNewPwd*/
  require_once("conn.php");
  $type = $_POST['type'];
  $userID = $_POST['userID'];
  $userPwd = $_POST['editOldPwd'];
  $newPwd = $_POST['editNewPwd'];
  $sql = "SELECT * FROM $type WHERE userID = $userID AND userPwd = $userPwd;";

  $rs = mysqli_query($conn,$sql);
  if(mysqli_num_rows($rs) == 1){
    $sql = "UPDATE $type SET userPwd = $newPwd WHERE userID = $userID;";
    mysqli_query($conn,$sql);
    echo "<div class='contentBorder'>";
    echo "<p><h3>You have successfully change your password!</h3></p>";
    echo "<meta http-equiv=\"refresh\" content=\"3; URL='../$type/profile.php'\"/> ";
    echo '</div>';
  }else{
    echo "<div class='contentBorder'>";
    echo "<p><h3>Sorry, your password is incorrect!</h3></p>";
    echo "<p>Please re-enter the information</p>";
    echo "<meta http-equiv=\"refresh\" content=\"3; URL='../$type/profile.php'\"/> ";
    echo '</div>';
    exit(0);
  }
?>
