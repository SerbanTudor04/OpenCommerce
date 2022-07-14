OcomStore.create(:name=>"Open Commerce Default Store", :content_menu_id=>1, :description=>"Store 1", :owner_id=>1, :default=>true)

OcomProductsCategory.create(:name=>"Shirts", :store_id=>1, :parent_id=>0)
OcomProductsCategory.create(:name=>"T-Shirts", :store_id=>1, :parent_id=>0)
OcomProductsCategory.create(:name=>"Pants", :store_id=>1, :parent_id=>0)
OcomProductsCategory.create(:name=>"Shoes", :store_id=>1, :parent_id=>0)
OcomProductsCategory.create(:name=>"Accessories", :store_id=>1, :parent_id=>0)
OcomProductsCategory.create(:name=>"Jewelry", :store_id=>1, :parent_id=>0)

OcomProduct.create(:name=>"Product 1", :description=>"Product 1", :category_id=>1)
OcomProduct.create(:name=>"Product 2", :description=>"Product 2", :category_id=>1)
OcomProduct.create(:name=>"Product 3", :description=>"Product 3", :category_id=>1)
OcomProduct.create(:name=>"Product 4", :description=>"Product 4", :category_id=>1)
OcomProduct.create(:name=>"Product 5", :description=>"Product 5", :category_id=>1)


OcomProduct.create(:name=>"Product 1", :description=>"Product 1", :category_id=>2)
OcomProduct.create(:name=>"Product 2", :description=>"Product 2", :category_id=>2)
OcomProduct.create(:name=>"Product 3", :description=>"Product 3", :category_id=>2)
OcomProduct.create(:name=>"Product 4", :description=>"Product 4", :category_id=>2)


OcomProduct.create(:name=>"Product 1", :description=>"Product 1", :category_id=>3)
OcomProduct.create(:name=>"Product 2", :description=>"Product 2", :category_id=>3)
OcomProduct.create(:name=>"Product 3", :description=>"Product 3", :category_id=>3)
OcomProduct.create(:name=>"Product 4", :description=>"Product 4", :category_id=>3)


OcomProduct.create(:name=>"Product 1", :description=>"Product 1", :category_id=>4)
OcomProduct.create(:name=>"Product 2", :description=>"Product 2", :category_id=>4)
OcomProduct.create(:name=>"Product 3", :description=>"Product 3", :category_id=>4)
OcomProduct.create(:name=>"Product 4", :description=>"Product 4", :category_id=>4)


OcomProduct.create(:name=>"Product 1", :description=>"Product 1", :category_id=>5)
OcomProduct.create(:name=>"Product 2", :description=>"Product 2", :category_id=>5)
OcomProduct.create(:name=>"Product 3", :description=>"Product 3", :category_id=>5)
OcomProduct.create(:name=>"Product 4", :description=>"Product 4", :category_id=>5)


OcomProduct.create(:name=>"Product 1", :description=>"Product 1", :category_id=>6)
OcomProduct.create(:name=>"Product 2", :description=>"Product 2", :category_id=>6)
OcomProduct.create(:name=>"Product 3", :description=>"Product 3", :category_id=>6)
OcomProduct.create(:name=>"Product 4", :description=>"Product 4", :category_id=>6)

