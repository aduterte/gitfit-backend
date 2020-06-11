class PostsController < ApplicationController

    def create 
        # byebug
        post = Post.create(content: params[:content], picture: params[:picture], user_id: params[:user_id], routine_id: params[:routine_id])
        # byebug
        render json: post
    end

    def destroy
        Post.destroy(params[:id])
    end
end
