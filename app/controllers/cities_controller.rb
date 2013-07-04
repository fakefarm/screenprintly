class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(params[:city])
    if @city.save
      redirect_to cities_path
    else
      render new_city_path
    end
  end

  def edit
  end
end
