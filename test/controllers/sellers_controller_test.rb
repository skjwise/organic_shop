require 'test_helper'

class SellersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sellers_index_url
    assert_response :success
  end

  test "should get show" do
    get sellers_show_url
    assert_response :success
  end

  test "should get new" do
    get sellers_new_url
    assert_response :success
  end

  test "should get create" do
    get sellers_create_url
    assert_response :success
  end

end
