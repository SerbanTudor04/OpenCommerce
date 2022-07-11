require "test_helper"

class OcomStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ocom_store = ocom_stores(:one)
  end

  test "should get index" do
    get ocom_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_ocom_store_url
    assert_response :success
  end

  test "should create ocom_store" do
    assert_difference("OcomStore.count") do
      post ocom_stores_url, params: { ocom_store: { content_menu_id: @ocom_store.content_menu_id, description: @ocom_store.description, name: @ocom_store.name, owner_id: @ocom_store.owner_id } }
    end

    assert_redirected_to ocom_store_url(OcomStore.last)
  end

  test "should show ocom_store" do
    get ocom_store_url(@ocom_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_ocom_store_url(@ocom_store)
    assert_response :success
  end

  test "should update ocom_store" do
    patch ocom_store_url(@ocom_store), params: { ocom_store: { content_menu_id: @ocom_store.content_menu_id, description: @ocom_store.description, name: @ocom_store.name, owner_id: @ocom_store.owner_id } }
    assert_redirected_to ocom_store_url(@ocom_store)
  end

  test "should destroy ocom_store" do
    assert_difference("OcomStore.count", -1) do
      delete ocom_store_url(@ocom_store)
    end

    assert_redirected_to ocom_stores_url
  end
end
