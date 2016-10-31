# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', '#likes', ()->
	ans_id = $(this).val()
	likes = $(this).outerHTML
	likes = parseInt(likes)
	$.ajax '/comments/update',
		type: 'PATCH'
		dataType: 'text'
		data: {
		  ans_id: ans_id,
		}
		success: (data) ->
		$(this).prop("disabled",true);

	return false
