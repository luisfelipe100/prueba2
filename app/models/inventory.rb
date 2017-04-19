class Inventory < ApplicationRecord
  belongs_to :category
  belongs_to :work
  validates :wheel_size, numericality: {
    greater_than: 0
  }

  scope :wheel_size_x, ->(x) {where('wheel_size = ?', x)}
end
