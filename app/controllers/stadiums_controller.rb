class StadiumsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    @stadiums = Stadium.all
    render template: "stadiums/index"
  end

  def show
    @stadium = Stadium.find_by(id: params[:id])
    render template: "stadiums/show"
  end

  def create
    if current_user
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
