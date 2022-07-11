json.extract! ocom_menu, :id, :name, :parent_id,:redirect_to,  :created_at, :updated_at
json.url ocom_menu_url(ocom_menu, format: :json)
