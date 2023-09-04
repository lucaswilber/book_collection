# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'Harry Potter'
        fill_in "book[author]", with: 'J.K. Rowling'
        fill_in "book[price]", with: 12.34
        fill_in "book[published]", with: Date.today
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Harry Potter')
        expect(page).to have_content('J.K. Rowling')
        expect(page).to have_content(12.34)
        expect(page).to have_content(Date.today)
    end

end