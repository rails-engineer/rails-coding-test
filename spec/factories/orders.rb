FactoryGirl.define do
  factory :order do
    status :draft

    factory :confirmed_order do
      status :confirmed
    end

    factory :canceled_order do
      status :canceled
    end

    after(:create) do |order|
      create_list(:product_item, 2, order: order)
    end
  end
end
