# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Answer.create(user_id: 1, body: "I think it's a good idea to build the database together because the database is the foundation of your whole application.", vote_count: 2)

Answer.create(user_id: 2, body: "I think you should build feature by feature because thats how shit opperates in the real world.", vote_count: 8)

Answer.create(user_id: 3, body: "Dude... just listen to Anne, she is a freakin super genius.", vote_count: 78)