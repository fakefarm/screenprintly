class QuotesController < ApplicationController
  def index;end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
    redirect_to quote_path(@quote)
    else
      render 'new'
    end
  end

  def show
    @quote = Quote.find(params[:id])
    qty = @quote.quantity
    @prices = PrintPrice.where(price_tier: @quote.quote_quantity(qty))
  end
end
