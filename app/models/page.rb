class Page < ApplicationRecord
  belongs_to :book
  validates :page_number, uniqueness: { scope: :book }
end
