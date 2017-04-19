class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.integer :serial_number, null: false
      t.integer :wheel_size
      t.string :description
      t.references :category, foreign_key: true

      t.timestamps
    end
    add_index :inventories, :serial_number, unique: true
  end
end
