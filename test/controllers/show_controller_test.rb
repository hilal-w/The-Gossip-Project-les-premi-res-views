require 'test_helper'

class ShowControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get show_team_url
    assert_response :success
  end

end
