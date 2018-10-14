<html>
	<head>
    <link rel="stylesheet" type="text/css" media="screen" href="css/bg.css"/>

	</head>
	<body>
		<?php

      function isValid($var,$varName){
				if(strlen($var) == 0){
          echo "<div class='contentBorder'>";
					echo "<p><h3>Hello, " . $varName . " is invalid!</h3></p>";
					echo "<p>Please re-enter the information</p>";
          echo "<meta http-equiv=\"refresh\" content=\"3; URL='index.php'\"/> ";
          echo '</div>';
					exit(0);
				}
			}

      $loginType = $_POST['userType'];
			$loginName = $_POST['username'];
			$loginPwd = $_POST['userpwd'];
      isValid($loginType, 'user Type');
			isValid($loginName, 'User Name');
			isValid($loginPwd, 'Password');
      /*valid input*/
      require_once('dbsql/conn.php');
      $table = "";
      $url = "";
      if($loginType == "staff_teaching"){
        $table = "teachingStaff";
        $url = "teachingStaff/home.php";
      }else if($loginType == "staff_nonTeaching"){
        $table = "non_teachingStaff";
        $url = "non_teachingStaff/home.php";
      }else if($loginType == "student"){
        $table = "students";
        $url = "student/home.php";
      }else if($loginType == "alumni"){
        $table = "alumni";
        $url = "alumni/home.php";
      }
      $sql = "SELECT * FROM '$table' where userName = '$loginName' and userPwd = '$loginPwd';";
      $rs = mysqli_query($conn,$sql);
      /*successfully login*/
      if(mysqli_num_rows($rs) == 1){
        echo "<div class='contentBorder'>";
        echo "<p>Please re-enter the information</p>";
        echo "<meta http-equiv=\"refresh\" content=\"3; URL='$url'\"/> ";
        echo "</div>";
      }

		?>
	</body>
</html>
