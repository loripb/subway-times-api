require 'date'

class StarredStop < ApplicationRecord
  belongs_to :user
  belongs_to :stop
  belongs_to :line

  def get_stop_arrival_times
    stop = Stop.find(self.stop_id).stop_id
    feed = Line.find(self.line_id).line_feed
    array_of_stop_hashes = {}
    north = stop + "N"
    south = stop + "S"

    contains_trip_update = feed.map{|element| element[:trip_update] ? element[:trip_update][:stop_time_update].map{ |element2|
      stop_id = element2.stop_id
      if element2[:arrival]
        arrival_time = Time.at(element2[:arrival][:time]).to_datetime
        array_of_stop_hashes[stop_id] ? array_of_stop_hashes[stop_id].push(arrival_time) : array_of_stop_hashes[stop_id] = []
      end

      :
      nil
      } : nil }

      stop_arrivals = {
        "uptown": array_of_stop_hashes[north],
        "downtown": array_of_stop_hashes[south]
      }

    return stop_arrivals
  end
end
