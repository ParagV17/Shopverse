class CreateProducts < ActiveRecord::Migration[5.2]
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.integer :category_id
      t.float :price
      t.float :discount
      t.integer :stock_units
      t.float :ratings
      t.text :images
      t.boolean :is_listed
      t.boolean :is_active, default: true
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def self.down
    drop_table :products
  end

end
