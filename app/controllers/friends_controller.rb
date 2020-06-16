class FriendsController < ApplicationController
    def create 
        friend = Friend.create(friendsParams)
        
        
        render json: User.find(params[:follow_id]).as_json(only: [:id, :name], include: [:followed, :followers, posts: {include: [:routine]}])
    end

    def delete 
        friend = Friend.find_by(friendsParams)
        friend.destroy
        render json: User.find(params[:follow_id]).as_json(only: [:id, :name])
    end

    private

    def friendsParams
        params.require(:friend).permit(:follow_id, :follower_id)
    end
end

