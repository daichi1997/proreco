require "test_helper"

class ProRecosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pro_recos_index_url
    assert_response :success
  end

  test "should get new" do
    get pro_recos_new_url
    assert_response :success
  end

  test "should get create" do
    get pro_recos_create_url
    assert_response :success
  end
end
