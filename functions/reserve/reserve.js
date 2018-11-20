function cancel(){
  $(document).on("click",".cancel",function(e){
		$.ajax({
            type: 'post',
            url: '../functions/reserve/cancel.php',
            data: {reserveID:$(e.target).attr("value"),userID:$("#uId").text(),userType:$("#uType").text()},
            success: function (r) {
              alert(r);
							location.reload();
            }
          });
	});
}
