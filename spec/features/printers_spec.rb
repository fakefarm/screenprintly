require 'spec_helper'

feature 'Printer' do
  scenario 'creates an account' do
    visit root_path
    click_link 'List your shop'
    fill_in 'Email', with: 'dave@futura.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create Account'
    # page should redirect to printer show, with a flash that says 'success, you are now logged in!'
  end

  scenario 'printer logs in' do
  end

  scenario 'edits contact information' do
  end

  scenario 'views contact information' do
  end

  scenario 'approves contact information to be published' do
  end
end