class Product < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :value, presence: true
  validates :restaurant_id, presence: true
end
