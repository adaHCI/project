/*
id : keyWord type searchBy
type value must be books/magazines/map/software
searchBy is an index of table
table id : "#+type.val()"*/
function resultHide() {
  $("#booksData").empty();
  $("#magazinesData").empty();
  $("#mapsData").empty();
  $("#softwareData").empty();
}
function search(strTypeID,strSearchBy,strKeyWordID) {
  resultHide();
  showTable(strTypeID,strSearchBy,strKeyWordID);
  $(strTypeID).change(function(){
    showTable(strTypeID,strSearchBy,strKeyWordID);
  });
  $(strSearchBy).change(function(){
    showTable(strTypeID,strSearchBy,strKeyWordID);
  });
  $(strKeyWordID).keyup(function(){
    showTable(strTypeID,strSearchBy,strKeyWordID);
  });
}

function showTable(strTypeID,strSearchBy,strKeyWordID){
  resultHide();
  var itemType = $(strTypeID).val();
  var strUrl;
  if(itemType == "books"){
    strUrl = "../dbsql/getBooksData.php";
  }else if(itemType == "magazines"){
    strUrl = "../dbsql/getMagazinesData.php";
  }else if(itemType == "map"){
    strUrl = "../dbsql/getMapData.php";
  }else if(itemType == "software"){
    strUrl = "../dbsql/getSoftwareData.php";
  }
  $.ajax({
        type : 'post',
         url : strUrl,
        data :  {searchBy:$(strSearchBy).val(),keyWord:$(strKeyWordID).val()},
     success : function(r)
     {
            $("#itemsData").html(r);
     },
     error : function(r)
     {
       alert("error!");
     }
    });
}
