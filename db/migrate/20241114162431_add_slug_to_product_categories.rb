class AddSlugToProductCategories < ActiveRecord::Migration[5.2]
  
  def self.up
    add_column :product_categories, :slug, :string, after: :name
  end

  def self.down
    remove_column :product_categories, :slug
  end

end
