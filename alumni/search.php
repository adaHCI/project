<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>alumni</title>
<link rel="stylesheet" type="text/css" media="screen" href="../css/bg.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/topbar.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/input.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="../css/table.css"/>
</head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="../functions/search/popup/popup.css"/>
<script type="text/javascript" src="../functions/search/search.js"></script>
<script type="text/javascript" src="../functions/search/popup/popup.js"></script>
<script>
$(document).ready(function(){
	$("#bar2").addClass("active");
	/*handling searching (type)*/
	search("#type","#searchBy","#keyWord");
	popup();
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
				<td><select id="type" name="type">
					<option value="books" selected="selected">books</option>
					<option value="magazines">magazines</option>
					<option value="software">software</option>
					<option value="map">map</option>
				</select></td>
				<td>Search by:</td>
				<td>
					<select id="searchBy" name="searchBy">
						<option value="0" selected="selected">bibID</option>
						<option value="1">name</option>
						<option value="2">year</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="left">
					<img src="../images/search.png" height="15px" width="15px"/>
					<input name="keyWord" id="keyWord" class="input" type="text" style="width:200px"/>
				</td>
			</tr>

			</table>
		</fieldset>
	  <fieldset><legend align="left">Result</legend>
			<fieldset id="books"><legend align="left">Books</legend>
			<?php require_once("../dbsql/getBooksData.php");
			?>
			</fieldset>
			<fieldset id="magazines"><legend align="left">Magazines</legend>
			<?php require_once("../dbsql/getMagazinesData.php");
			?>
			</fieldset>
			<fieldset id="map"><legend align="left">Map</legend>
			<?php require_once("../dbsql/getMapData.php");
			?>
			</fieldset>
			<fieldset id="software"><legend align="left">software</legend>
			<?php require_once("../dbsql/getSoftwareData.php");
			?>
			</fieldset>
		</fieldset>
</div>
<?php
	require_once("../functions/search/popup/popup.php");
?>
</body>
</html>
