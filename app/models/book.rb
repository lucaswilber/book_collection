class Book < ApplicationRecord
    validates :title, :author, :price, :published, presence: true
end
