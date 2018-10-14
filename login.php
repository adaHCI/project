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

		?>
	</body>
</html>
