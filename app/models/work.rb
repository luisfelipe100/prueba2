class Work < ApplicationRecord
  belongs_to :user
  has_one :inventory
end
