require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carts_show_url
    assert_response :success
  end

  test "should get create" do
    get carts_create_url
    assert_response :success
  end

  test "should get apdate" do
    get carts_apdate_url
    assert_response :success
  end

  test "should get purchase" do
    get carts_purchase_url
    assert_response :success
  end

end
