function popup(){
  $(".popup").click(function(){
    $src = "../data/";
    $src += $("#type").val() + "/";
    $src += $(this).attr("value");
    $src += ".jpg";
    $(".show").fadeIn();
    $(".img-show .popItem").attr("src", $src);
  });

  $(".cross, .overlay").click(function () {
      $(".show").fadeOut();
  });
}
