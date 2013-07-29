class CitiesController < ApplicationController
  before_filter :find_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.order('name').all
    @page_title = "List of Screen Printers by city"
    @page_description = "List of Screen Printers by city"
  end

  def show
    @printers = Printer.where(city_id: @city).sort.reverse
    @page_title = "Screen Printers in #{@city.name}"
    @page_description = "Screen Printers in #{@city.name}"
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
