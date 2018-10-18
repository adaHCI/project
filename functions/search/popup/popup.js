function popup(){
  $(".popup").click(function(){
    $src = "../data/";
    $src += $("#type").val() + "/";
    $src += $(this).text();
    $src += ".jpg";
    $(".show").fadeIn();
    $(".img-show img").attr("src", $src);
  });

  $("span, .overlay").click(function () {
      $(".show").fadeOut();
  });
}
