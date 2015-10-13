class MessagesChannel < ApplicationCable::MessagesChannel
	def subscribed
		stream_from 'messages'
	end
end