class Routine < ApplicationRecord
    belongs_to :user 
    has_many :lists
    has_many :workouts, through: :lists
    
end
