class WorkoutsController < ApplicationController

    def show 
        workout = Workout.find(params[:id])
        render json: workout
    end
end
