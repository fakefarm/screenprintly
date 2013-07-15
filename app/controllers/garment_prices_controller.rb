class GarmentPricesController < ApplicationController

  def index
    @garment_prices = GarmentPrice.all
  end

  def new
    @garment = GarmentPrice.new
  end

  def create
    @garment = GarmentPrice.create(params[:garment_price])

    if @garment.save
      redirect_to garment_prices_path
    else
      render 'new'
    end

  end

  def show; end
  def edit; end

end
