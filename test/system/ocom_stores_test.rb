require "application_system_test_case"

class OcomStoresTest < ApplicationSystemTestCase
  setup do
    @ocom_store = ocom_stores(:one)
  end

  test "visiting the index" do
    visit ocom_stores_url
    assert_selector "h1", text: "Ocom stores"
  end

  test "should create ocom store" do
    visit ocom_stores_url
    click_on "New ocom store"

    fill_in "Content menu", with: @ocom_store.content_menu_id
    fill_in "Description", with: @ocom_store.description
    fill_in "Name", with: @ocom_store.name
    fill_in "Owner", with: @ocom_store.owner_id
    click_on "Create Ocom store"

    assert_text "Ocom store was successfully created"
    click_on "Back"
  end

  test "should update Ocom store" do
    visit ocom_store_url(@ocom_store)
    click_on "Edit this ocom store", match: :first

    fill_in "Content menu", with: @ocom_store.content_menu_id
    fill_in "Description", with: @ocom_store.description
    fill_in "Name", with: @ocom_store.name
    fill_in "Owner", with: @ocom_store.owner_id
    click_on "Update Ocom store"

    assert_text "Ocom store was successfully updated"
    click_on "Back"
  end

  test "should destroy Ocom store" do
    visit ocom_store_url(@ocom_store)
    click_on "Destroy this ocom store", match: :first

    assert_text "Ocom store was successfully destroyed"
  end
end
