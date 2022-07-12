Rails.application.routes.draw do
  resources :ocom_stores
  get 'ocom_stores/:id/ocom_menus_parents', to: 'ocom_stores#getParentsMenusByStoreId', as: :ocom_menus_parents_by_store_id
  get 'ocom_stores/:id/ocom_menus_childs', to: 'ocom_stores#getChildMenusByStoreId', as: :ocom_menus_childs_by_store_id
 
end
