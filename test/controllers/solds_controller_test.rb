require 'test_helper'

class SoldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get solds_index_url
    assert_response :success
  end

  test "should get show" do
    get solds_show_url
    assert_response :success
  end

end
