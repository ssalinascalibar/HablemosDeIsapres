require 'test_helper'

class CustomerOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get customer_orders_create_url
    assert_response :success
  end

end
