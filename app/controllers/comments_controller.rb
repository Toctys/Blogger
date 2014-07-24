class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comment.create!(comment_params)
		respond_to do |format|
			format.html {redirect_to @post}
			format.js
	end

end