class StarredStopsController < ApplicationController

  def index
    @starred_stops = StarredStop.all

    render json: @starred_stops
  end

  def show
    @starred_stop = StarredStop.find(params[:id])

    render json: {stop: @starred_stop, feed: @starred_stop.get_stop_arrival_times}
  end

  def create
    @starred_stop = StarredStop.create(params.permit(:user_id, :stop_id, :line_id))

    render json: {starred_stop: StarredStopSerializer.new(@starred_stop)}
  end

  def destroy
    @starred_stop = StarredStop.find(params[:id])
    @starred_stop.destroy
  end
end
