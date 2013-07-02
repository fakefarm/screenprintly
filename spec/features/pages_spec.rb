require 'spec_helper'

feature 'Root' do

  scenario 'has app overview information' do
    visit root_path
    page.should have_text("Need T-shirts?")
    page.should have_text("Get quotes from local printers.")
    page.should have_link("How it works")
    page.should have_link("Why ScreenPrintly")
    page.should have_link("Printer login")
    page.should have_link("Request your city")
    page.should have_link("List your shop")
  end

  scenario 'has list of cities' do
    visit root_path
    page.should have_text("Available cities")
    page.should have_text("Boulder placeholder")
  end

  scenario 'has button to get quotes' do
    visit root_path
    page.should have_link('get quotes')
  end
end


