require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get potin" do
    get gossip_potin_url
    assert_response :success
  end

end
