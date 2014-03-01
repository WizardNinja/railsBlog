# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('body').delegate '#new_post', 'click', (event) ->
		event.preventDefault()
		$('#post_form').toggleClass "hidden"

	$('body').delegate '.new_comment', 'click', (event) ->
		event.preventDefault()
		$(this).parent().children('.comment_form').toggleClass("hidden")

	$('body').delegate '.up_vote', 'click', (event) ->
		event.preventDefault()
		console.log($(this).attr('data-id'))
		console.log($(this).attr('data-type'))
		console.log($(this).attr('data-userId'))
		id = $(this).attr('data-id')
		type = $(this).attr('data-type')
		user_id = $(this).attr('data-userId')
		$.post("/posts/#{id}/votes", {value: 1, user_id: user_id, votable_id: id, votable_type: type })



