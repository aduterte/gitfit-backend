class Post < ApplicationRecord
    belongs_to :user
    belongs_to :routine, optional: true
    has_many :likes
    has_many :comments
    # has_one :routine
end
