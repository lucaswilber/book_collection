class Book < ApplicationRecord
    has_many :users
    validates :title, :author, :price, :published, presence: true
end
