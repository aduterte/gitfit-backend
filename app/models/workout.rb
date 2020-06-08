class Workout < ApplicationRecord
    # has_many :lists
    # has_many :routines, through: :lists
    belongs_to :routine
    belongs_to :exercise
    
end
