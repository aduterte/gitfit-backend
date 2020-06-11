class RoutinesController < ApplicationController

    def create 
       
        routine = Routine.create(user_id: params['user_id'], name: params['name'])
        # byebug
        render json: routine
    end

    def destroy
        Routine.destroy(params[:id])
    end
end
