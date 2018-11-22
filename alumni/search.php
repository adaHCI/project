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
	setInterval(function() {
		var d = new Date();
		var time = time = d.toLocaleTimeString();
    $('#timer').html(time);
}, 1000);
	/*handling searching (type)*/
	popup();
	search("#type","#searchBy","#keyWord");

	$(document).on("click","#submit",function(e){
		$.ajax({
            type: 'post',
            url: '../functions/reserve/reserve.php',
            data: {bibID:$(e.target).attr("alt"),userID:$("#uId").text(),userType:$("#uType").text()},
            success: function (r) {
              alert(r);
							location.reload();
            }
          });
	});

	$(document).on("click","#favourite",function(e){
		$.ajax({
            type: 'post',
            url: '../functions/reserve/favourite.php',
            data: {bibID:$(e.target).attr("alt"),userID:$("#uId").text(),action:"add"},
            success: function (r) {
              alert(r);
							location.reload();
            }
          });
	});
	$(document).on("click","#delFavourite",function(e){
		$.ajax({
            type: 'post',
            url: '../functions/reserve/favourite.php',
            data: {bibID:$(e.target).attr("alt"),userID:$("#uId").text(),action:"delete"},
            success: function (r) {
              alert(r);
							location.reload();
            }
          });
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

  <h3>Search Items:</h3><?php echo "<p id='uId' hidden='hidden'>$_SESSION[userID]</p><p id='uType' hidden='hidden'>$_SESSION[table]</p>";?>
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
						<option value="bibID" selected="selected">bibID</option>
						<option value="name">name</option>
						<option value="year">year</option>
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
			<div id="itemsData"></div>
		</fieldset>
</div>
<?php
	require_once("../functions/search/popup/popup.php");
?>
</body>
</html>
