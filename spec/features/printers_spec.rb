require 'spec_helper'

feature 'Printer' do
  scenario 'page exists' do
    visit new_printer_path
    page.should have_text("Welcome!")
  end

  scenario 'creates an account' do
    visit new_printer_path
    fill_in 'Shop name', with: 'Screenprintly'
    fill_in 'City', with: 1
    fill_in 'Contact name', with: 'dave woodall'
    fill_in 'Email', with: 'dave@screenprintly.com'
    click_button 'Create Printer'
    # page should redirect to printer show, with a flash that says 'success, you are now logged in!'
  end

  scenario 'printer logs in'
  scenario 'edits contact information'
  scenario 'views contact information'
  scenario 'approves contact information to be published'
end