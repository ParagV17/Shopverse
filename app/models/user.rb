class User < ApplicationRecord

  # validations
  validates :full_name, presence: true
  validates :email, presence: true
  validates :contact_number, presence: true

  # associations
  has_many :user_addresses


end