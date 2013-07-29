require 'spec_helper'

feature 'Root' do

  scenario 'has app overview information' do
    visit root_path
    page.should have_text("Need T-shirts?")
    page.should have_text("Find the closest or cheapest screen printer for you.")
  end
end


