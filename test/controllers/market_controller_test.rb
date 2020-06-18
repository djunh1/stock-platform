require 'test_helper'

class MarketControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get market_index_url
    assert_response :success
  end

  test "should get update" do
    get market_update_url
    assert_response :success
  end

end
