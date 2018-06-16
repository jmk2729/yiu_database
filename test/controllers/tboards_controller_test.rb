require 'test_helper'

class TboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tboards_new_url
    assert_response :success
  end

  test "should get create" do
    get tboards_create_url
    assert_response :success
  end

  test "should get edit" do
    get tboards_edit_url
    assert_response :success
  end

  test "should get update" do
    get tboards_update_url
    assert_response :success
  end

  test "should get destory" do
    get tboards_destory_url
    assert_response :success
  end

  test "should get show" do
    get tboards_show_url
    assert_response :success
  end

end
