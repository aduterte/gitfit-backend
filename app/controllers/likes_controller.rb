class LikesController < ApplicationController
    def create 
        like = Like.create(likeParams)
        render json: like
    end

    private

    def likeParams
        params.require(:like).permit(:post_id, :user_id)
    end
end
