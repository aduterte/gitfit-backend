class CommentsController < ApplicationController
    def create 
        comment = Comment.create(comment_params)
        render json: comment
    end

    private
    
    def comment_params
        params.require(:comment).permit(:post_id, :user_id, :content)
    end
end
