# location: spec/feature/author_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Jk Rowling'
    fill_in 'Price', with: 10.56
    select'01', from: 'book[published_date(3i)]'
    select '01', from: 'book[published_date(2i)]'
    select '2011', from: 'book[published_date(1i)]'
    click_on 'Submit'
    expect(page.status_code).to eq(200)
  end
end