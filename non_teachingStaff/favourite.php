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
	$("#bar3").addClass("active");
  setInterval(function() {
		var d = new Date();
		var time = time = d.toLocaleTimeString();
    $('#timer').html(time);
}, 1000);
	popup();
	cancel();
	$.ajax({
					type: 'post',
					url: '../functions/reserve/favourite.php',
					data: {userID:$("#uId").text(),action:"get"},
					success: function (r) {
						$('#favouriteItem').html(r);
					}
				});
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
<p id='uId' hidden='hidden'><?php echo $_SESSION['userID'];?></p>
<p id='uType' hidden='hidden'><?php echo $_SESSION['table'];?></p>
<div id ='favouriteItem'></div>
</div>

<?php
	require_once("../functions/search/popup/popup.php");
?>
</body>
</html>
