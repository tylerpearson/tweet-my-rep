class LegislatorsController < ApplicationController

  def index
    lat = params[:lat]
    lng = params[:lng]

    @results = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators/locate?latitude=#{lat}&longitude=#{lng}&apikey=9c1ebbe93f3c4e52827fe22270805466")

    render json: @results
  end
end
