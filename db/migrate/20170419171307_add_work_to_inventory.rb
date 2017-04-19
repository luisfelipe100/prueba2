class AddWorkToInventory < ActiveRecord::Migration[5.0]
  def change
    add_reference :inventories, :work, foreign_key: true
  end
end
