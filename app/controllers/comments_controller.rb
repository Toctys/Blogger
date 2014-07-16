class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@create = @post.comments.create!(comment_params)
		respond_to do |format|
			format.html {redirect_to @post}
			format.js
	end
	private
	def comment_params
		params.require(:comment).permit(:body)
	end
end
