# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
# require "byebug"
User.destroy_all
Routine.destroy_all
List.destroy_all
Workout.destroy_all
Exercise.destroy_all

# u = User.create(name: "Alex", email: "alexduterte@gmail.com", password: "pass")
# r = Routine.create(user: u)
# e = Exercise.create(name: "Biceps")
# w = Workout.create(user: u, exercise: e)
# w2 = Workout.create(user: u, exercise: e)
# l = List.create(routine: r, workout: w)

file = File.read("#{Rails.root.to_s}/db/exercises.json")
data = JSON.parse(file)
# byebug
data.each do |ex|
    Exercise.create(
        name: ex["name"],
        category: ex["category"],
        body_part: ex["body_part"],
        equipment: ex["equipment"],
        difficulty: ex["difficulty"],
        image1: ex["image1"],
        image2: ex["image2"],
        description: ex["description"]
    )
           
end

u = User.create(
    name: "Alex", 
    email: "alexduterte@gmail.com", 
    password: "pass",
    zipcode: "20705",
    age: 37,
    gender: "M",
    height: 62,
    admin: true,
    avatar: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/67646088_10162063760620273_8213096485026267136_o.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=Ot-M_B9x7L8AX_ocjPK&_nc_ht=scontent-iad3-1.xx&oh=632ee681a81d061f481ed4562e61d264&oe=5EFEBBAA"

)





r = Routine.create(user: u)

w = Workout.create(user: u, exercise: Exercise.all.sample)

w2 = Workout.create(user: u, exercise: Exercise.all.sample)
List.create(routine: r, workout: w)
List.create(routine: r, workout: w2)

# i = 1
# while i <= 400
# doc = Nokogiri::HTML(open("https://www.acefitness.org/education-and-resources/lifestyle/exercise-library/#{i}"))

# name = doc.css("h1.exercise-hero__title").text
#     if (name != "")
#         cat = doc.css("h2.exercise-hero__category-title").text
#         bodyPart = doc.css("div.exercise-info__term.exercise-info__term--body-part dd").text.split(", ")
#         eq = doc.css("div.exercise-info__term.exercise-info__term--equipment dd").text.split(", ")
#         dif = doc.css("div.exercise-info__term.exercise-info__term--difficulty span").text
#         img1 = doc.search('.exercise-hero__image').map{ |n| n['style'][/url\((.+)\)/, 1] }[0].gsub("'","")
#         img2 = img1[0...(img1.length-5)] + "2.jpg" 
#         desc = doc.css(".exercise-post__step-content p").text
#         Exercise.create(
#             name: name,
#             category: cat,
#             body_part: bodyPart,
#             equipment: eq,
#             difficulty: dif,
#             image1: img1,
#             image2: img2,
#             description: desc
#         )
#     end

# i += 1

# end


# otherAPI = RestClient.get("https://raw.githubusercontent.com/alexnoob/BasketBall-GM-Rosters/master/2019-20.NBA.Roster.json")
#     images = JSON.parse(otherAPI)

# # arry = ["bkn", "nyk"]
# data = RestClient.get("http://data.nba.net/10s/prod/v1/2019/players.json")
# players = JSON.parse(data)
# # while i <= 400
# players['league']['standard'].each do |player|
#     # byebug
#     name = "#{player['firstName']} #{player['lastName']}"
    
#     image = ""
#     images['players'].filter do |x| 
#         # byebug
#         image = x['imgURL'] if x['name'] == name 
#     end
#     byebug
# end

