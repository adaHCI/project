/*
id : keyWord type searchBy
type value must be books/magazines/map/software
searchBy is an index of table
table id : "#+type.val()"*/
function resultHide() {
  $("#books").hide();
	$("#magazines").hide();
	$("#map").hide();
	$("#software").hide();
}

function search(strTypeID,strSearchBy,strKeyWordID) {
  var table;
  resultHide();
  $(strTypeID).change(function(){
    resultHide();
    table = $("#" + $(strTypeID).val());
    table.show();
  });
  /*handling searching (search by)*/
  $(strKeyWordID).keyup(function(){
    $("#" + $(strTypeID).val() + " tr").each(function(){
        if($(this).find("td").eq($("#searchBy").val()).text().toLowerCase().indexOf($(strKeyWordID).val()) != -1){
            $(this).show();
        }else{
            $(this).hide();
        }
        $(this).parent().children("tr:first").show();
    });
  });
}
