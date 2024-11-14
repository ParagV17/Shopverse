class CreateProductCategories < ActiveRecord::Migration[5.2]
  
  def self.up
    create_table :product_categories do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.text :tags
      t.boolean :is_active, default: true
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def self.down
    drop_table :product_categories
  end

end
