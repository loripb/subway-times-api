require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'

class Line < ApplicationRecord
  has_many :stop_lines
  has_many :stops, through: :stop_lines


  def line_feed
    data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=910d35946935f1167602dcd39bf4a3ec&feed_id=51"))
    @feed = Transit_realtime::FeedMessage.decode(data)
    @feed.entity
  end
end


# this grabs the stop_id
# @feed.entity[2][:trip_update][:stop_time_update][0][:stop_id]
