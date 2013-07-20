class CitiesController < ApplicationController
  before_filter :find_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.order('name').all
  end

  def show
    @printers = Printer.where(city_id: @city)
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

private
  def find_city
    @city = City.find_by_slug!(params[:id])
  end
end
