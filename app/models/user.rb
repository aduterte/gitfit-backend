class User < ApplicationRecord
    has_secure_password

    has_many :routines
    has_many :posts
    has_many :weights
end


# has_secure_password
# has_many :courses, class_name: "Subject", :foreign_key => "professor_id"
# has_many :enrollments, :foreign_key => "student_id"
# has_many :subjects, through: :enrollments, :foreign_key => "student_id"
# has_many :professors, through: :subjects, :foreign_key => "professor_id"
# has_many :students, through: :courses, :foreign_key => "professor_id"
# has_many :posts, dependent: :delete_all
# has_many :comments, dependent: :delete_all
# has_many :likes, dependent: :delete_all

# has_many :followed, :class_name => 'Friend', 
#    :foreign_key => 'follow_id'
# has_many :followers, :class_name => 'Friend', 
#    :foreign_key => 'follower_id'

# belongs_to :house, optional: true
# has_many :messages
# validates :name, presence: true
# validates :email, presence: true, uniqueness: {case_sensitive: false}
# accepts_nested_attributes_for :courses