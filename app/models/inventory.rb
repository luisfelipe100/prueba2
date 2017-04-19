class Inventory < ApplicationRecord
  belongs_to :category
  validates :wheel_size, numericality: {
    greater_than: 0
  }
end
