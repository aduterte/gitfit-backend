class User < ApplicationRecord
    has_secure_password

    has_many :routines
    has_many :posts
    has_many :weights
    has_many :followed, :class_name => 'Friend', 
    :foreign_key => 'follower_id'
    has_many :followers, :class_name => 'Friend', 
    :foreign_key => 'follow_id'
    
end
