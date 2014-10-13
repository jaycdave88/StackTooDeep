# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username:"JoeBoiii", email:"joe@joe.com", password_digest: "klsjdlfjlksjdlkf")
User.create(username:"Cat92",  email:"cat@cat.com", password_digest: "klsjdlfjlksjdlkf")
User.create(username:"Bob", email:"bob@joe.com", password_digest: "klsjdlfjlksjdlkf")

Question.create(title: "Random CSS question", user_id: 1, body: "Is it possible to make a class inherit from another class in regular CSS3? Cause I want to pass some bootstap classes to a single class name and stuff...")
Question.create(title: "Why is Javascript so hard?", user_id: 2, body: "I really have Javascript and am just hoping some of you might be able to suggest some resources that might teach me to love it.")
Question.create(title: "Where are the most programming jobs?", user_id: 3, body: "I just graduated from DBC San Francisco, but I'm curious if my skills might be in higher demand elsewhere in the world?")

Answer.create(question_id: 1, user_id: 2, body: "It's impossible. You have to use SASS.", vote_count: 8)
Answer.create(question_id: 1, user_id: 3, body: "You can do it with good 'ol copy and paste..", vote_count: 2)
Answer.create(question_id: 2, user_id: 3, body: "Javascript just sucks. Get over it.", vote_count: 35)
Answer.create(question_id: 2, user_id: 1, body: "Learning to use many Javascript libraries is the best way to start loving the language", vote_count: 112)
Answer.create(question_id: 3, user_id: 1, body: "Go to Asia, they would love you over there.", vote_count: 1)
Answer.create(question_id: 3, user_id: 2, body: "Stay in San Francisco you dummy.", vote_count: 44)