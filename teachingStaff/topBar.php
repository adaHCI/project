<?php
  /*$_SESSION['table'] $_SESSION['userName'] $_SESSION['userId'] $_SESSION['isUserFirstLogin']*/
  session_start();
  if(!isset($_SESSION['userID'])){
    echo "<div class='contentBorder'>";
    echo "Haven't recieve user info, redirect to login page...";
    echo "<meta http-equiv=\"refresh\" content=\"3; URL='../index.php'\"/> ";
    echo "</div>";
    exit(0);
  }
  $isFirstLogin = $_SESSION['isUserFirstLogin'];
  $userType = $_SESSION['table'];
  $userName = $_SESSION['userName'];
  $userID = $_SESSION['userID'];
  $topBar = <<<EOD
  <div class="topBar">
    <ul>
      <li><label>Account Info</label></br>
      <label>ID:$userID</label></br>
      <label style="float:left">Name:$userName</label>
      <div style="float:left"><a href="profile.php" style="color: #66FFFF;"><b>Change Password</b></div></a>
      </li>
      <li><a class="barItem" href="logout.php">Logout</a></li>
      <li id="bar1"><a class="barItem" href="home.php">Reserve</a></li>
      <li id="bar2"><a class="barItem" href="search.php">Search</a></li>
    </ul>
  </div>
EOD;
  session_write_close();
  echo $topBar;
?>
