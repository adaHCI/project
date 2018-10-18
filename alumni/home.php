<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>alumni</title>
<link rel="stylesheet" type="text/css" media="screen" href="../css/bg.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/topbar.css"/>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#bar1").addClass("active");
});
</script>

<body>
<?php
	require_once("topBar.php");
	  if($isFirstLogin == 1){
			echo "<br/>";
	    echo "<div class='contentBorder'>";
	    echo "First Login detected... Please change your password first.";
	    echo "<meta http-equiv=\"refresh\" content=\"3; URL='../$userType/profile.php'\"/> ";
	    echo "</div>";
	    exit(0);
	  }
?>
</body>
</html>
