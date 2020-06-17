# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
# require "byebug"
# User.destroy_all
# Routine.destroy_all
# List.destroy_all
# Workout.destroy_all
# Exercise.destroy_all

# u = User.create(name: "Alex", email: "alexduterte@gmail.com", password: "pass")
# r = Routine.create(user: u)
# e = Exercise.create(name: "Biceps")
# w = Workout.create(user: u, exercise: e)
# w2 = Workout.create(user: u, exercise: e)
# l = List.create(routine: r, workout: w)

# file = File.read("#{Rails.root.to_s}/db/exercises.json")
# data = JSON.parse(file)
# # byebug
# data.each do |ex|
#     Exercise.create(
#         name: ex["name"],
#         category: ex["category"],
#         body_part: ex["body_part"],
#         equipment: ex["equipment"],
#         difficulty: ex["difficulty"],
#         image1: ex["image1"],
#         image2: ex["image2"],
#         description: ex["description"]
#     )
           
# end

# u = User.create(
#     name: "Alex", 
#     email: "alexduterte@gmail.com", 
#     password: "pass",
#     zipcode: "20705",
#     age: 37,
#     gender: "M",
#     height: 62,
#     admin: true,
#     avatar: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/67646088_10162063760620273_8213096485026267136_o.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=Ot-M_B9x7L8AX_ocjPK&_nc_ht=scontent-iad3-1.xx&oh=632ee681a81d061f481ed4562e61d264&oe=5EFEBBAA"

# )



Achievement.create(code: "weight", name: "And So It Begins", details: "Log your first weight")
Achievement.create(code: "newUser", name: "New Kid On The Block", details: "Create an account")
Achievement.create(code: "halfWay", name: "Oooo You're Halfway Theeere", details: "Reach the halfway point of your goal")
Achievement.create(code: "goalHit", name: "This Is Only The Beginning", details: "Reach your goal weight")
Achievement.create(code: "routine", name: "Pick It Up And Put It Down", details: "Create your first routine")
Achievement.create(code: "follow", name: "I'll Be Watching You", details: "Follow another user")
ta = Achievement.create(code: "test", name: "test", details: "this is for testing purposes")

Unlock.create(user: User.first, achievement: ta)