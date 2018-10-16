<?php
  /*$_SESSION['table'] $_SESSION['userName'] $_SESSION['userId']*/
  session_start();
  if(!isset($_SESSION['userId'])){
    echo "<div class='contentBorder'>";
    echo "Haven't recieve user info, redirect to login page...";
    echo "<meta http-equiv=\"refresh\" content=\"3; URL='../index.php'\"/> ";
    echo "</div>";
    exit(0);
  }
  $userType = $_SESSION['table'];
  $userName = $_SESSION['userName'];
  $userId = $_SESSION['userId'];
  $topBar = <<<EOD
  <div class="topBar">
    <ul>
      <li><label>Account Info</label></br>
      <label>ID:$userId</label></br>
      <label>Name:$userName</label></li>
      <li><a href="logout.php">Logout</a></li>
      <li id="bar1"><a href="home.php">Home</a></li>
      <li id="bar2"><a href="search.php">Search</a></li>
    </ul>
  </div>
EOD;
  session_write_close();
  echo $topBar;
?>
