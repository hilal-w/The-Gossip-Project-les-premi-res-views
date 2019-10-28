require 'test_helper'

class AceulControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get aceul_home_url
    assert_response :success
  end

end
