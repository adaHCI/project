function popup(){
  $(document).on("click",".popup",function(){
    $src = "../data/";
    $src += $(this).closest("fieldset").attr("id")+ "/";
    $src += $(this).attr("value");
    $src += ".jpg";
    $(".show").fadeIn();
    $(".img-show .popItem").attr("src", $src);
  });

  $(".cross, .overlay").click(function () {
      $(".show").fadeOut();
  });
}
