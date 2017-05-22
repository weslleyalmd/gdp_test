# Create default clients
Client.create(name: 'Unilever') # id: 1
Client.create(name: 'Apple') # id: 2
Client.create(name: 'Nike') # id: 3
Client.create(name: 'Ford') # id: 4

# Create default products
Product.create(named_id: 'classic',  name: 'Classic Ad',  price: '269.99') # id: 1
Product.create(named_id: 'standout', name: 'Standout Ad', price: '322.99') # id: 2
Product.create(named_id: 'premium',  name: 'Premium Ad',  price: '394.99') # id: 3

# Create default more_for_less_rules

# Unilever - product Classic - 3x2
MoreForLessRule.create(client_id: 1, product_id: 1, eligible_qtty: 3, collectible_qtty: 2)

# Ford - product Classic - 5x4
MoreForLessRule.create(client_id: 4, product_id: 1, eligible_qtty: 5, collectible_qtty: 4)

# Create default price_discount_rules

# Apple - product Standout - price drops to 299.99
PriceDiscountRule.create(client_id: 2, product_id: 2, eligible_qtty: 0, new_price: 299.99)

# Nile - product Premium - price drops 379.99 buying at least 4
PriceDiscountRule.create(client_id: 3, product_id: 3, eligible_qtty: 4, new_price: 379.99)

# Ford - product Standout - price drops to 309.99
PriceDiscountRule.create(client_id: 4, product_id: 2, eligible_qtty: 0, new_price: 309.99)

# Ford - product Premium - price drops to 389.99 buying at least 3
PriceDiscountRule.create(client_id: 4, product_id: 3, eligible_qtty: 3, new_price: 389.99)