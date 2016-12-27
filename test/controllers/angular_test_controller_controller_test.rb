require 'test_helper'

class AngularTestControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get angular_test_controller_index_url
    assert_response :success
  end

end
