class QuotesController < ApplicationController
  def index;end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
    redirect_to search_path(@search)
    else
      render 'new'
    end
  end

  def show
    @search = Quote.find(params[:id])
    #=> id: 1, numb_of_colrs: 3, quantity: 50

  end

end

# Min qty < quantity < Max qty
# = > printers, whose price tier is inside this qty range, filter out to only show the color requested, sort asc.