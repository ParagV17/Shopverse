class CreateOrderItems < ActiveRecord::Migration[5.2]
  
  def self.up
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity_ordered
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def self.down
    drop_table :order_items
  end

end
