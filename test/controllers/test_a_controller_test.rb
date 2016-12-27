require 'test_helper'

class TestAControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_a_index_url
    assert_response :success
  end

end
