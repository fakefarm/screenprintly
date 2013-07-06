require 'spec_helper'

feature 'Root' do

  scenario 'has app overview information' do
    visit root_path
    page.should have_text("Need T-shirts?")
    page.should have_text("Find the best screen printer")
    page.should have_text("Screen printers by city")
  end

  scenario 'has links to each city' do
    create(:city, name: "Orlando")
    create(:city, name: "Boston")
    visit root_path
    page.should have_link("Orlando")
    page.should have_link("Boston")
  end


end


