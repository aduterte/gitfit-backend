class ListsController < ApplicationController

    def create 
        list = List.create(workout_id: params['workout_id'], routine_id: params['routine_id'])
        # byebug
        render json: list
    end
end
