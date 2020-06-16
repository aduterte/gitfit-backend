class Routine < ApplicationRecord
    belongs_to :user 
    # has_many :lists
    has_many :posts
    has_many :workouts #, through: :lists
    has_many :exercises, through: :workouts

    accepts_nested_attributes_for :workouts
    
end
