class QuotesController < ApplicationController

  before_filter :add_meta_tags, only: [:new, :show]

  def index;end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
    @session = Session.create(session_id: session['session_id'], quote_id: @quote.id )
    redirect_to quote_path(@quote)
    else
      render 'new'
    end
  end

  def show
    @session = Session.where(session_id: session['session_id'] ).last
    @quote = Quote.find(params[:id])
    qty = @quote.quantity
    @prices = PrintPrice.where(price_tier: @quote.quote_quantity(qty))
  end

private
  def add_meta_tags
    @page_title = "Find the cheapest printer"
    @page_description = "Find the cheapest printer"
  end
end
