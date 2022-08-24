class StadiumsController < ApplicationController
  def index
    stadiums = Stadium.all
    render json: stadiums.as_json
  end

  def index
    stadium = Stadium.find_by(id: params[:id])
    render json: stadium.as_json
  end
end
