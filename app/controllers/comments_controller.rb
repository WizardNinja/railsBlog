class CommentsController < ApplicationController
	def create
		type = params[:type]
		if current_user && type == "Post"
			Comment.create(content: params[:content], user_id: current_user.id, 
				commentable_id: params[:post_id], commentable_type: type)
		elsif current_user && type == "Comment"
			Comment.create(content: params[:content], user_id: current_user.id,
				commentable_id: params[:comment_id], commentable_type: type)
		end
		redirect_to posts_path
	end
end
