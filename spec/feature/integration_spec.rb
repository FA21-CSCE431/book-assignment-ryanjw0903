# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'author', with: 'JK Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'price', with: 20
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(20)
  end
end


RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'date', with: 20
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end