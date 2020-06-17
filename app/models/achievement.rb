class Achievement < ApplicationRecord
    has_many :unlocks
    has_many :users, through: :unlocks
end
