FactoryGirl.define do
  factory :product_item do
    order
    product
    item
    quantity Faker::Number.between(1, 10)
  end
end
