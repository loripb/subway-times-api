class LinesController < ApplicationController
  def index
    @lines = Line.all

    render json: @lines
  end

  def show
    @line = Line.find(params[:id])

    render json: {line: @line, Stops: @line.stops, feed: @line.line_feed}
  end
end
