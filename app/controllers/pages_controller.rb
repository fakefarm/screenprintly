class PagesController < ApplicationController
  def index
    @cities = City.order('name').all
  end
end
