class Book < ApplicationRecord
  has_many :purchases
  has_many :pages, -> { order(:page_number => :asc) }

  def title
    name
  end
end
