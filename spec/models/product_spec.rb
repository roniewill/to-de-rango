require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'testing total of products' do
    it 'return total of products for a specific restaurant' do
      restaurant = Restaurant.create(name: "Restaurant 01", phone: "9999-9999", address: "somewhere")

      p1 = Product.create(name: "Amburguer", value: 15, restaurant_id: restaurant.id)
      p2 = Product.create(name: "Hot Dog", value: 10, restaurant_id: restaurant.id)
      p3 = Product.create(name: "Pizza", value: 20, restaurant_id: restaurant.id)

      expect(restaurant.total_products).to eq 3
    end
  end
end