<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>alumni</title>
<link rel="stylesheet" type="text/css" media="screen" href="../css/bg.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/topbar.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/table.css"/>
</head>
<link rel="stylesheet" type="text/css" media="screen" href="../functions/search/popup/popup.css"/>
<script type="text/javascript" src="../functions/search/popup/popup.js"></script>
<script type="text/javascript" src="../functions/reserve/reserve.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#bar1").addClass("active");
	popup();
	cancel();
	$.ajax({
					type: 'post',
					url: '../functions/reserve/showReserve.php',
					data: {userID:$("#uId").text()},
					success: function (r) {
						$('#reserveRecord').html(r);
					}
				});
});
</script>

<body>

<?php
	require_once("topBar.php");
	require_once("../functions/checkFirstLogin.php");
?>
<br/>
<div class="contentBorder">
<p id='uId' hidden='hidden'><?php echo $_SESSION['userID'];?></p>
<p id='uType' hidden='hidden'><?php echo $_SESSION['table'];?></p>
<div id ='reserveRecord'></div>
</div>

<?php
	require_once("../functions/search/popup/popup.php");
?>
</body>
</html>
