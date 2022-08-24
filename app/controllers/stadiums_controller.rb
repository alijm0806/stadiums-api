class StadiumsController < ApplicationController
  def index
    stadiums = Stadium.all
    render json: stadiums.as_json
  end

  def show
    stadium = Stadium.find_by(id: params[:id])
    render json: stadium.as_json
  end

  def create
    stadium = Stadium.new(
      name: params[:name],
      city: params[:city],
      address: params[:address],
      image: params[:image],
    )
    stadium.save
    render json: stadium.as_json
  end
end
