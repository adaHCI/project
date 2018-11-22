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
	$('form').on('submit',function(){
    if($(this).find('input[name="editNewPwd"]').val() != $(this).find('input[name="confirmNewPwd"]').val()){
        // show error
				alert("The new password not match the retype password!");
        return false;
    }
	});
});
</script>
<body>
	<?php
		require_once("topBar.php");
	?>
<br/>
<div class="contentBorder">
  <?php
		require_once("../functions/changePassword/form.php");
	?>
</div>
</body>
</html>
