FactoryGirl.define do
  factory :product_item do
    order
    product
    item
    quantity Faker::Number.number(1)
  end
end
