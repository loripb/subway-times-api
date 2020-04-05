require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'
require 'json'

data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=910d35946935f1167602dcd39bf4a3ec&feed_id=51"))
feed = Transit_realtime::FeedMessage.decode(data)

# def get_feed
#   p @feed.entity
# end
realtime_data = feed.entity

collected_arrival_times = []

def station_time_lookup(train_data, station_id)
  trips = train_data.map { |train| train[:trip_update][:trip] }
  puts trips
end

# station_time_lookup(realtime_data, 101)
puts JSON.parse(realtime_data)
