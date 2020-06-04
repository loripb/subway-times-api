class StopLinesController < ApplicationController
  def find
    @stop_line = StopLine.find_by(line_id: params[:line_id], stop_id: params[:stop_id])

    render json: @stop_line.get_stop_arrival_times
  end
end
