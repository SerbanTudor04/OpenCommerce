OcomStore.create(
    :name => "Ocom Default Store", 
    :content_menu_id => 1, 
    :description => "This is the first Ocom Store", 
    :owner_id => 1,
)
#1
OcomMenu.create(
    :name => "Products",
    :parent_id => 0,
    :store_id => 1,
)
#2
OcomMenu.create(
    :name => "Clothes",
    :parent_id => 1,
    :store_id => 1,
)
#3
OcomMenu.create(
    :name => "Food",
    :parent_id => 1,
    :store_id => 1,
)
#4
OcomMenu.create(
    :name => "Electronics",
    :parent_id => 1,
    :store_id => 1,
)

#5
OcomMenu.create(
    :name => "About",
    :parent_id => 0,
    :store_id => 1,
)
#6
OcomMenu.create(
    :name => "Contact Us",
    :parent_id => 0,
    :store_id => 1,
)

OcomMenu.create(
    :name => "Shirts",
    :parent_id => 2,
    :redirect_to => "/products/clothes/shirts",
    :store_id => 1,
)

OcomMenu.create(
    :name => "Pants",
    :parent_id => 2,
    :redirect_to => "/products/clothes/pants",
    :store_id => 1,
)

OcomMenu.create(
    :name => "Shoes",
    :parent_id => 2,
    :redirect_to => "/products/clothes/shoes",
    :store_id => 1,
)

### FOOD

OcomMenu.create(
    :name => "Burgers",
    :parent_id => 3,
    :redirect_to => "/products/food/burgers",
    :store_id => 1,
)

OcomMenu.create(
    :name => "Pizzas",
    :parent_id => 3,
    :redirect_to => "/products/food/pizzas",
    :store_id => 1,
)

### ELECTRONICS

OcomMenu.create(
    :name => "Laptops",
    :parent_id => 4,
    :redirect_to => "/products/electronics/laptops",
    :store_id => 1,
)

OcomMenu.create(
    :name => "Phones",
    :parent_id => 4,
    :redirect_to => "/products/electronics/phones",
    :store_id => 1,
)



OcomAdminUser.create(
    :email => "example@gmail.com",
    :password_digest => "pwd123",
    :first_name => "John",
    :last_name => "Doe",
    :phone_number => "123-456-7890",
)
    

OcomProduct.create(
    :name => "Shirt",
    :price => 10.00,
    :description => "This is a shirt",
    :image => "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    :store_id => 1,
)

OcomProduct.create(
    :name => "Pants",
    :price => 10.00,
    :description => "This is a pants",
    :image => "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    :store_id => 1,
)

OcomProduct.create(
    :name => "Shoes",
    :price => 10.00,
    :description => "This is a shoes",
    :image => "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    :store_id => 1,
)



