class StopsController < ApplicationController

  def index
    @stops = Stop.all

    render json: @stops
  end

  def show
    @stop = Stop.find(params[:id])

    render json: {stop: StopSerializer.new(@stop), lines: @stop.lines}
  end
end
