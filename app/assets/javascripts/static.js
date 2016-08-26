//js for about me buttons
$(document).ready(function(){
  $("#skills-blurb").hide();
  $("#services-blurb").hide();
  $("#about-blurb").show();

  $("#about-btn").click(function(){
    $("#skills-blurb").hide();
    $("#services-blurb").hide();
    $("#about-blurb").show();
  });

  $("#skills-btn").click(function(){
    $("#services-blurb").hide();
    $("#about-blurb").hide();
    $("#skills-blurb").show();
  });

  $("#services-btn").click(function(){
    $("#skills-blurb").hide();
    $("#about-blurb").hide();
    $("#services-blurb").show();
  });
});
