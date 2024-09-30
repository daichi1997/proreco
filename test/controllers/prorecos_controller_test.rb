require "test_helper"

class ProrecosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prorecos_index_url
    assert_response :success
  end
end
