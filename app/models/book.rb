class Book < ApplicationRecord
  has_many :purchases

  def title
    name
  end
end
