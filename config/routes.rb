Rails.application.routes.draw do
  # resources :ocom_stores
  # get 'ocom_stores/:id/ocom_menus_parents', to: 'ocom_stores#getParentsMenusByStoreId', as: :ocom_menus_parents_by_store_id
  # get 'ocom_stores/:id/ocom_menus_childs', to: 'ocom_stores#getChildMenusByStoreId', as: :ocom_menus_childs_by_store_id

  # post 'ocom_admin_auth/login', to: 'ocom_admin_sessions#create', as: :ocom_admin_login

  get 'stores/default', to: 'stores#getDefaultStore', as: :ocom_store_default
 
  get 'categories/:store_id', to: 'categories#getCategoriesByStore', as: :ocom_categories_by_store_id
  get 'categories/category/:category_id', to: 'categories#getCategoryById', as: :ocom_category_by_id
  get 'products/:category_id', to: 'products#getProductsByCategory', as: :ocom_products_by_category_id

end
