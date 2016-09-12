15.times do
  Item.create!(name: Faker::Commerce.material)
end

15.times do
  Category.create!(name: Faker::Book.genre)
end

10.times do |i|
  customer = Customer.find_or_initialize_by(email: "customer_#{i + 1}@example.com",
                  first_name: "FirstName #{i + 1}",
                  last_name: "LastName #{i + 1}")
  customer.update(password: '12345678', password_confirmation: '12345678')
end

item_ids = Item.pluck(:id)
category_ids = Category.pluck(:id)
30.times do
  Product.create!(category_id: category_ids.sample, name: Faker::Book.title, price: Faker::Commerce.price)
end

statuses = Order.statuses.values
customer_ids = Customer.pluck(:id)
10.times do |i|
  created_datetime = Faker::Time.between(2.weeks.ago, DateTime.now)
  Order.create!(customer_id: customer_ids[i % customer_ids.size], status: statuses.sample, created_at: created_datetime, updated_at: created_datetime)
end

product_ids = Product.pluck(:id)
order_ids = Order.pluck(:id)
100.times do
  product_item = ProductItem.find_or_initialize_by(order_id: order_ids.sample,
                      product_id: product_ids.sample,
                      item_id: item_ids.sample)
  product_item.quantity = (rand(10) + 1)
  product_item.save!
end
