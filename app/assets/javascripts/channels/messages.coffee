# App.messages = App.cable.subscriptions.create 'MessagesChannel',
# 	received: (data) ->
# 		$('#messages').append @renderMessage(data)

# 	renderMessage: (data) ->
# 		"<p><b>[#{data.username}]:</b> #{data.message}</p>"

App.messages = App.cable.subscriptions.create "MessagesChannel",
  received: (data) ->
    messages = $('#messages')
    messages.append(data.message)
    messages.scrollTop(messages.height() + 1000)

# on load for turbolinks
$(document).on "page:change", ->
  $("#new_message").on
    "ajax:success": ->
      $('#message_body').val('')