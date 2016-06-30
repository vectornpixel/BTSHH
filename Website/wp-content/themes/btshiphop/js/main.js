
$(document).ready(function(){
   $(".article_main:odd").each(function(){
       var elem = $(this);
       elem.addClass("odd");
   });
});