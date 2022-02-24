require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get user_guide" do
    get static_pages_user_guide_url
    assert_response :success
  end

  test "should get skus" do
    get static_pages_skus_url
    assert_response :success
  end
end
