class LinesController < ApplicationController
  def index
    @lines = Line.all

    render json: LineSerializer.new(@lines).serialized_json
  end

  def show
    @line = Line.find(params[:id])

    render json: {line: @line, feed: @line.line_feed, Stops: @line.stops}
  end
end
