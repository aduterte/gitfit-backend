class WorkoutsController < ApplicationController

    def index 
        render json: Workout.all
    end
    def show 
        workout = Workout.find(params[:id])
        render json: workout
    end

    def create
        workout = Workout.create(name: params['name'], user_id: params['user_id'].to_i, exercise_id: params['exercise_id'].to_i, sets: params['sets'], type_name: params['type_name'])
        # byebug
        render json: workout
        
    end

    def destroy
        workout = Workout.find(params[:id])
        workout.destroy
    end

    private
    
    def workout_params
        # byebug
        params.permit(:user_id, :exercise_id, :sets)
    end
end
# Workout.create(user_id: 1, exercise_id: 2, sets: [{"reps"=>"6", "weight"=>"3.5"}, {"reps"=>"7", "weight"=>"4.5"}]