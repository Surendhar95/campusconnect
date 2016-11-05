# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    $('#answer-btn').click ->
      $('.answer').hide();
      $('#ans-form').show();
      $(this).hide();
    $("#search-submit").click ->
      $("#page-title").text("Searching results....")


return
