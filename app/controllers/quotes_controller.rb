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
    @prices = PrintPrice.all
    # I'm thinking of making a quoteQuery model that is initialized with the parameters of the quote. The Query will then convert the object into a query of printPrices using the initialized object's refined search to find the right price.
  end
end
