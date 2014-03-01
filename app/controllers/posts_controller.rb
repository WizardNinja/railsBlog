class PostsController < ApplicationController
	def index
		@posts = Post.find(:all, :include => :comments)
	end

	def create
		if current_user
			post = Post.create(title: params[:title], url: params[:url], user_id: current_user.id)
		end
		redirect_to posts_path
	end

end
