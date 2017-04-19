class Work < ApplicationRecord
  belongs_to :user
  has_one :inventory

  scope :ultimos5, -> { order('id desc').limit(5) }
  scope :null_item, -> { joins("LEFT JOIN inventories ON inventories.work_id = works.id").where('inventories.work_id is null')}

end
