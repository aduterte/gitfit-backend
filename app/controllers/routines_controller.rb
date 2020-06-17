class RoutinesController < ApplicationController

    def create 
       
        routine = Routine.create(user_id: params['user_id'], name: params['name'])
        # exercises = params['exercises']
      
        # exercises.each do |exe|
        #     Workout.create(
        #         routine_id: routine.id,
        #         exercise_id: exe['exercise_id']
        #         sets: exe
        #     )
    # end
        render json: routine
    end

    def destroy
        Routine.destroy(params[:id])
    end

    private

    # def routine_params
    #     params.require(:routine)
    # end
end


# selected.forEach(exe => {
#     let workout = {
#         routine_id: routine.id,
#         exercise_id: exe.exercise_id,
#         sets: exe.sets,
#         type_name: exe.type_name,
#         name: exe.name