FactoryBot.define do
  factory :product do
    name { 'Some Product' }
    value  { rand(100) }
    restaurant
  end
end