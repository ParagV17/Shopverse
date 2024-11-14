class Product < ApplicationRecord

  # validations
  validates :name, presence: true

  # associations
  belongs_to :product_category, foreign_key: :category_id


end