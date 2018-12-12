require 'test_helper'

class ShopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_index_url
    assert_response :success
  end

  test "should get search" do
    get shop_search_url
    assert_response :success
  end

end
