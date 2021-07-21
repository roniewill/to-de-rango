FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
    phone  { Faker::PhoneNumber.phone_number }
    address { Faker::Address.full_address }
  end
end