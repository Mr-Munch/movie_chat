class ChatsController < ApplicationController

	before_action :set_movie

	def index
		@chats = Chat.where(movie_id: @movie.id).limit(10)
		@chat = Chat.new
	end

	def create
		@chat = Chat.new(chat_params)
		@chat.user_id = current_user.id
		@chat.movie_id = params[:movie_id]
		if @chat.save
			@chats = Chat.where(movie_id: params[:movie_id]).limit(5)
			@movie.reload
		end
	end

	def destroy
		@chat = Chat.find(params[:id])
		if @chat.destroy
			@chats = Chat.where(movie_id: params[:movie_id]).limit(5)
			@movie.reload
		end
	end

	private

		def set_movie
			@movie = Movie.find(params[:movie_id])
		end

		def chat_params
			params.require(:chat).permit(:comment)
		end
end
