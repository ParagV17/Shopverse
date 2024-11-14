class CreateOrders < ActiveRecord::Migration[5.2]

  def self.up
    create_table :orders do |t|
      t.integer :user_id
      t.integer :shipping_address_id
      t.integer :billing_address_id
      t.string :uuid
      t.float :gross_price
      t.float :discount_amount
      t.float :discount_percent
      t.float :tax_amount
      t.float :tax_percent
      t.float :net_price
      t.string :currency, default: 'inr'
      t.string :payment_status
      t.integer :payment_id
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def self.down
    drop_table :orders
  end

end
