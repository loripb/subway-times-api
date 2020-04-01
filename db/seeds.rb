# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Line.create(name: "7")

Stop.create(stop_id: 726, name: "34th St Hudson Yds")

StopLine.create(stop_id: Stop.first.id, line_id: Line.first.id)

User.create(username: "lei", password_digest: "123")

StarredStop.create(user_id: User.first.id, stop_id: Stop.first.id)

puts "done!"
