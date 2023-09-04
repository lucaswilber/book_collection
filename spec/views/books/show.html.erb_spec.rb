require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    assign(:book, Book.create!(title: 'The Lion, the Witch and the Wardrobe', author: 'C.S. Lewis', price: 12.34, published: Date.new(1950, 10, 16)))
  end

  it "renders attributes in <p>" do
    render
  end
end
