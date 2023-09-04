require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(title: 'The Lord of the Rings: The Two Towers', author: 'J.R.R Tolkien', price: 12.34, published: Date.new(1954, 11, 11)),
      Book.create!(title: 'The Lord of the Rings: The Return of the King', author: 'J.R.R Tolkien', price: 12.34, published: Date.new(1955, 10, 20))
    ])
  end

  it "renders a list of books" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
