class StopsController < ApplicationController
  def show
    @stop = Stop.find(params[:id])

    render json: {stop: StopSerializer.new(@stop), lines: @stop.lines}
  end
end
