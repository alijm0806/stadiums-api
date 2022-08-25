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

  def update
    stadium = Stadium.find_by(id: params[:id])
    stadium.name = params[:name] || stadium.name
    stadium.city = params[:city] || stadium.city
    stadium.address = params[:address] || stadium.address
    stadium.image = params[:image] || stadium.image
    stadium.save

    render json: stadium.as_json
  end

  def destroy
    stadium = Stadium.find_by(id: params[:id])
    stadium.destroy
    render json: { message: "stadium has been removed" }
  end
end
