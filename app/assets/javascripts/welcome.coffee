# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(->
  $("#main").addClass("active")
  # $('a').click (event) ->
  #   $(".active")[0].className = ""
  #   $("##{event.target.id}").parent().addClass("active")
  #   return false
  return
  setTimeout(->
    $('.notice').slideUp();
  ,3000);)