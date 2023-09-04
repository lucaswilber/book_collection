# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    date = Date.today
    it 'has title' do
        book = Book.new(
            title: '',
            author: 'J.R.R Tolkien',
            price: 12.34,
            published: date
        )
        expect(book).to_not be_valid
        book.title = 'The Hobbit'
        expect(book).to be_valid
    end
    it 'has author' do
        book = Book.new(
            title: 'The Hobbit',
            author: '',
            price: 12.34,
            published: date
        )
        expect(book).to_not be_valid
        book.author = 'J.R.R Tolkien'
        expect(book).to be_valid
    end
    it 'has price' do
        book = Book.new(
            title: 'The Hobbit',
            author: 'J.R.R Tolkien',
            price: nil,
            published: date
        )
        expect(book).to_not be_valid
        book.price = 12.34
        expect(book).to be_valid
    end
    it 'has published' do
        book = Book.new(
            title: 'The Hobbit',
            author: 'J.R.R Tolkien',
            price: 12.34,
            published: nil
        )
        expect(book).to_not be_valid
        book.published = date
        expect(book).to be_valid
    end
end