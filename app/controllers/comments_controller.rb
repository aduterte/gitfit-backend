class CommentsController < ApplicationController
    def create 

    end

    private
    
    def comment_params
        params.require(:comment).permit(:post_id, :user_id, :content)
    end
end
