# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Jk Rowling'
    fill_in 'Price', with: 10.5
    select'01', from: 'book[published_date(3i)]'
    select '01', from: 'book[published_date(2i)]'
    select '2011', from: 'book[published_date(1i)]'
    click_on 'Submit'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
