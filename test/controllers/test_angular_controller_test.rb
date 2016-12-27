require 'test_helper'

class TestAngularControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_angular_index_url
    assert_response :success
  end

end
