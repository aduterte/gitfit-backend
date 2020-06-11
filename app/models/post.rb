class Post < ApplicationRecord
    belongs_to :user
    belongs_to :routine, optional: true
    # has_one :routine
end
