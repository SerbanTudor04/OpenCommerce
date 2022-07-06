require "test_helper"

class AdminAuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_authentication_index_url
    assert_response :success
  end
end
