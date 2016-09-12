[![Code Climate](https://codeclimate.com/github/rails-engineer/rails-coding-test/badges/gpa.svg)](https://codeclimate.com/github/rails-engineer/rails-coding-test)
[![Test Coverage](https://codeclimate.com/github/rails-engineer/rails-coding-test/badges/coverage.svg)](https://codeclimate.com/github/rails-engineer/rails-coding-test/coverage)

## Queries

### SQL
```sql
SELECT DISTINCT 
	c.id AS customer_id, 
	c.first_name AS customer_first_name,
	cat.id AS category_id,
	cat.name AS category_name
FROM Customers c
	INNER JOIN Orders o ON o.customer_id = c.id
	INNER JOIN Product_Items pi ON pi.order_id = o.id
	INNER JOIN Products p ON pi.product_id = p.id
	INNER JOIN Categories cat ON p.category_id = cat.id
ORDER BY c.id
;
```

### Active Record
```ruby
Customer.joins(orders: { 
    product_items: { 
        product: :category 
    } 
}).select('customers.id AS customer_id,'\
          'customers.first_name AS customer_first_name,'\
          'categories.id AS category_id,'\
          'categories.name AS category_name')
```
