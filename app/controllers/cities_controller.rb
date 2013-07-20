class CitiesController < ApplicationController
  def index
    @cities = City.order('name').all

  end

  def show
    @city = City.find(params[:id])

    @printers = Printer.where(city_id: @city.id)
    @printers = @printers.sort.reverse
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
