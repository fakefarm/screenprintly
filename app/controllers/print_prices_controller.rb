class PrintPricesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @print_price = PrintPrice.new
  end

  def create
    @print_price = PrintPrice.create(params[:print_price])
    if @print_price.save
      redirect_to print_prices_path
    else
      render 'new'
    end
  end

  def edit
  end
end
