FactoryGirl.define do
  factory :customer do
    sequence(:email) { |i| "customer_#{i}@example.com" }
    sequence(:first_name) { |i| "FirstName_#{i}" }
    sequence(:last_name) { |i| "LastName_#{i}" }
    password '12345678'
    password_confirmation '12345678'
  end
end
