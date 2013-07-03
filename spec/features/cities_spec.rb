require 'spec_helper'

feature 'Managing cities' do

  scenario 'Visiting cities index' do
    visit cities_path
    page.should have_text("List of cities")
    page.should have_link("New city")
  end

  scenario 'Adding a city' do
    visit cities_path
    click_link 'New city'
    # enter name of city
    # click create
    # confirm it's been created in model
  end

  scenario 'Viewing all cities' do
    create(:city)
    visit cities_path
    # page should have 'boulder'
  end

end