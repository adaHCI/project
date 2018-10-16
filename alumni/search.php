<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>alumni</title>
<link rel="stylesheet" type="text/css" media="screen" href="../css/bg.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/topbar.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/input.css"/>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#bar2").addClass("active");
});
</script>

<body>
<?php
	require_once("topBar.php");
?>
<br/>
<div class="contentBorder">

  <h3>Search Items:</h3>
		<fieldset><legend align="left">Search Options</legend>
			<table>
  		<tr>
				<td>Item type :</td>
				<td><input id="type" name="type" list="listType" type="text"></td>
				<td>Search by:</td>
				<td>
					<select id="searchBy" name="searchBy">
						<option value="bibID">bibID</option>
						<option value="name">name</option>
						<option value="year">year</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<img src="../images/search.png" height="15px" width="15px"/>
					<input name="keyWord" id="keyWord" class="input" type="text" style="width:200px"/>
				</td>
			</tr>

			</table>
		</fieldset>
	  <fieldset><legend align="left">Result</legend>

		</fieldset>
</div>
<datalist id="listType">
  <option value="books"/>
  <option value="magazines"/>
  <option value="software"/>
  <option value="map"/>
</datalist>
</body>
</html>
