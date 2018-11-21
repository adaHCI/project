function popup(){
  $(document).on("click",".popup",function(){
    $id = ""+$(this).attr("value");
    getIntro($id);
    $src = "../data/";
    $src += $(this).closest("fieldset").attr("id")+ "/";
    $src += $id;
    $src += ".jpg";

    $(".show").fadeIn();
    $(".img-show .popItem").attr("src", $src);
  });

  $(".cross, .overlay").click(function () {
      $(".show").fadeOut();
  });
}

function getIntro($strID){
  $.ajax({
        type : 'post',
         url : '../functions/search/getIntro.php',
        data :  {bibID: $strID},
    dataType : 'html',
     success : function(r)
     {
       $(".img-show .popText").html(r);
     },
     error : function(r)
     {
       alert("error!");
     }
    });
}
