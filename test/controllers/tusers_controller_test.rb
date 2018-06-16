require 'test_helper'

class TusersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tusers_new_url
    assert_response :success
  end

  test "should get create" do
    get tusers_create_url
    assert_response :success
  end

end
