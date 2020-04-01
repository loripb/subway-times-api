# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# data reset
StopLine.destroy_all
StarredStop.destroy_all
Stop.destroy_all
Line.destroy_all
User.destroy_all

########################## parser

file = File.open("./public/stops.txt")
file_data = file.readlines # reads data from stops.txt

$stops = file_data.map do |line|
  line.split(',,') # splits string by duble commas
end

file.close

def parse_stops
  $stops.map do |text_line|
    Stop.create(stop_id: text_line[0], name: text_line[1]) # [0] stop id, [1] stop name
  end
end

parse_stops

Line.create(name: "7", feed_id: 51)

StopLine.create(stop_id: Stop.find_by(stop_id: 726).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 725).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 724).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 723).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 721).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 720).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 719).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 718).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 716).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 714).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 713).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 712).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 711).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 710).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 709).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 708).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 707).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 706).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 705).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 702).id, line_id: Line.first.id)
StopLine.create(stop_id: Stop.find_by(stop_id: 701).id, line_id: Line.first.id)

puts "DONE!"
