class CreateUserAddresses < ActiveRecord::Migration[5.2]
  
  def self.up
    create_table :user_addresses do |t|
      t.integer :user_id, null: false
      t.string :address_type
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.boolean :is_primary
      t.boolean :is_active
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def self.down
    drop_table :user_addresses
  end

end
