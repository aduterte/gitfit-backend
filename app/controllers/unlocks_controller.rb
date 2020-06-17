class UnlocksController < ApplicationController

    def create 
        achievement = Achievement.find_by(code: params[:achievement_code])
        user = User.find(params[:user_id])
        Unlock.create(user: user, achievement: achievement)

        render json: achievement
    end
end
