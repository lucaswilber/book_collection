require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  let(:book) {
    Book.create!(title: 'The Lord of the Rings: The Fellowship of the Ring', author: 'J.R.R Tolkien', price: 12.34, published: Date.new(1954, 7, 29))
  }

  before(:each) do
    assign(:book, book)
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(book), "post" do
    end
  end
end
