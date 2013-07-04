class PagesController < ApplicationController
  def index
    @cities = City.find(:all)
  end
end
