FactoryGirl.define do
  factory :product do
    category
    sequence(:name) { |i| "Product ##{i}" }
    price Faker::Commerce.price
  end
end
