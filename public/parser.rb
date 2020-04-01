file = File.open("/stops.txt")
file_data = file.readlines

$stops = file_data.map do |line|
  line.split(',,')
end

file.close

def parsed_stops
  $stops
end

puts parsed_stops
