class StarredStopsController < ApplicationController

  def index
    @starred_stops = StarredStop.all

    render json: @starred_stops
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
