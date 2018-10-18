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
?>
<div class="contentBorder">
  <form method="post" action="">
    <table>
      <tr><th colspan="2">Change Password</th></tr>
      <tr><td>Your old password:</td><td><input type="password"/></td></tr>
      <tr><td>Retype password:</td><td><input type="password"/></td></tr>
      <tr><td>New password:</td><td><input type="password"/></td></tr>
      <tr><td colspan="2"><input type="submit" style="float: right"/></td></tr>
    </table>
  </form>
</div>
</body>
</html>
