  // jQuery counterUp
  $('[data-toggle="counterUp"]').counterUp({
    delay: 15,
    time: 1500
});




$(".md-open").click(function() {           
  $("#exampleModal").addClass('show');
  $("#exampleModal").addClass('show');
  //$(".modal-backdrop").show();               
});  

$(".vd-btn").click(function() {
  $("body").removeClass('modal-open');  
  $("body").css({"overflow": "auto", "padding-left": "unset"});           
  $("#exampleModal").toggle(); 
  $(".modal-backdrop").toggle();               
});         

