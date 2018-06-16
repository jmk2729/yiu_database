require 'test_helper'

class TsessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tsessions_new_url
    assert_response :success
  end

  test "should get create" do
    get tsessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tsessions_destroy_url
    assert_response :success
  end

end
