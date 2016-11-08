# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->

	$(document).on 'click', '#likes', ()->
		countl = $("#show_likes").text()
		countl = parseInt(countl)
		ans_id = $(this).val()
		id = $(this);

		$.ajax '/comments/update',
			type: 'PATCH'
			dataType: 'text'
			data: {
			  ans_id: ans_id,
			}
			success: (data) ->
				$(id).prop("disabled",true)
				$(id).find("#show_likes").text(countl+1)


		return false
return
