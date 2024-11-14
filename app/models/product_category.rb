class ProductCategory < ApplicationRecord

  # validations
  validates :name, presence: true

  # associations
  has_many :products, foreign_key: :category_id


end