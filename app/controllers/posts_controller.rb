class PostsController < ApplicationController

    def create 
        # byebug
        post = Post.create(content: params[:content], picture: params[:picture], user_id: params[:user_id], routine_id: params[:routine_id])
        # byebug
        render json: post
    end

    def show
        render json: Post.find(params[:id])
    end

    def update 
        post = Post.find(params[:id])
        post.update(content: params[:content])
        render json: post
    end
    def destroy
        Post.destroy(params[:id])
    end
end
