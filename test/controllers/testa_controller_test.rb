require 'test_helper'

class TestaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testum = testa(:one)
  end

  test "should get index" do
    get testa_url
    assert_response :success
  end

  test "should get new" do
    get new_testum_url
    assert_response :success
  end

  test "should create testum" do
    assert_difference('Testum.count') do
      post testa_url, params: { testum: {  } }
    end

    assert_redirected_to testum_url(Testum.last)
  end

  test "should show testum" do
    get testum_url(@testum)
    assert_response :success
  end

  test "should get edit" do
    get edit_testum_url(@testum)
    assert_response :success
  end

  test "should update testum" do
    patch testum_url(@testum), params: { testum: {  } }
    assert_redirected_to testum_url(@testum)
  end

  test "should destroy testum" do
    assert_difference('Testum.count', -1) do
      delete testum_url(@testum)
    end

    assert_redirected_to testa_url
  end
end
