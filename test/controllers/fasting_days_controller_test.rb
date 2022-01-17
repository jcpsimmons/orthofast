require "test_helper"

class FastingDaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fasting_days_index_url
    assert_response :success
  end
end
