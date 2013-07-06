require 'spec_helper'

feature 'Managing cities' do

  scenario 'Visiting cities index' do
    visit cities_path
    page.should have_text("List of cities")
    page.should have_link("List your shop")
  end

  scenario 'Adding a city' do
    visit new_city_path
    page.should have_text("Add a new city")
    fill_in 'Name', :with => 'Denver'
    click_button 'Create City'
    page.should have_text("List of cities")
    page.should have_text("Denver")
  end
end