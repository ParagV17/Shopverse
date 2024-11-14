class CreateUsers < ActiveRecord::Migration[5.2]
  
  def self.up
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :password
      t.bigint :contact_number
      t.string :profile_picture_url
      t.date :date_of_birth
      t.integer :status, default: 0
      t.text :preferences
      t.timestamps
      t.datetime :deleted_at 
    end
  end

  def self.down
    drop_table :users
  end

end
