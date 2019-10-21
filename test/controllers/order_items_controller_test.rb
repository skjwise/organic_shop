require 'test_helper'

class OrderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get order_items_show_url
    assert_response :success
  end

end
