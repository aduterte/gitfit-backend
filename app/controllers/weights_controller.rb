class WeightsController < ApplicationController

    def create
        
        weight = Weight.create(weight_params)
        # byebug
        render json: weight
    end

    def weight_params
        params.require(:weight).permit(:lbs, :kg, :user_id)
    end
end
