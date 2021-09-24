# location: spec/feature/date_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in published_date, with: 'Tue, 04 Dec 2007'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Tue, 04 Dec 2007')
  end
end