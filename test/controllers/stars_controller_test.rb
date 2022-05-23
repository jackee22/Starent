require "test_helper"

class StarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stars_new_url
    assert_response :success
  end

  test "should get create" do
    get stars_create_url
    assert_response :success
  end

  test "should get edit" do
    get stars_edit_url
    assert_response :success
  end

  test "should get update" do
    get stars_update_url
    assert_response :success
  end

  test "should get destroy" do
    get stars_destroy_url
    assert_response :success
  end

  test "should get index" do
    get stars_index_url
    assert_response :success
  end

  test "should get show" do
    get stars_show_url
    assert_response :success
  end
end
