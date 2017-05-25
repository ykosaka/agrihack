require 'test_helper'

class YasaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yasai = yasais(:one)
  end

  test "should get index" do
    get yasais_url
    assert_response :success
  end

  test "should get new" do
    get new_yasai_url
    assert_response :success
  end

  test "should create yasai" do
    assert_difference('Yasai.count') do
      post yasais_url, params: { yasai: { name: @yasai.name, quantity: @yasai.quantity } }
    end

    assert_redirected_to yasai_url(Yasai.last)
  end

  test "should show yasai" do
    get yasai_url(@yasai)
    assert_response :success
  end

  test "should get edit" do
    get edit_yasai_url(@yasai)
    assert_response :success
  end

  test "should update yasai" do
    patch yasai_url(@yasai), params: { yasai: { name: @yasai.name, quantity: @yasai.quantity } }
    assert_redirected_to yasai_url(@yasai)
  end

  test "should destroy yasai" do
    assert_difference('Yasai.count', -1) do
      delete yasai_url(@yasai)
    end

    assert_redirected_to yasais_url
  end
end
