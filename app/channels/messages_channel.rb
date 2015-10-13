class MessagesChannel < ApplicatoinCable::MessagesChannel
	def subscribed
		stream_from 'messages'
	end
end