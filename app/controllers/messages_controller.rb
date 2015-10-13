class MessagesController < ApplicationController
  def index
  end

  def create
  	ActionCable.server.broadcast 'messages',
  		message: params[:message][:body],
  		username: cookies.signed[:username]
  		
  	# respond with a success status code for every request
  	head :ok
  end
end
