class MessagesController < ApplicationController
  def index
  end

  def create

  	# respond with a success status code for every request
  	head :ok
  end
end
