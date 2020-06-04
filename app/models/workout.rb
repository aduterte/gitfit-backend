class Workout < ApplicationRecord
    has_many :lists
    has_many :routines, through: :lists
    belongs_to :user
    belongs_to :exercise
    
end
