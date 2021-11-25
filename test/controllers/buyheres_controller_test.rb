require "test_helper"

class BuyheresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyhere = buyheres(:one)
  end

  test "should get index" do
    get buyheres_url
    assert_response :success
  end

  test "should get new" do
    get new_buyhere_url
    assert_response :success
  end

  test "should create buyhere" do
    assert_difference('Buyhere.count') do
      post buyheres_url, params: { buyhere: {  } }
    end

    assert_redirected_to buyhere_url(Buyhere.last)
  end

  test "should show buyhere" do
    get buyhere_url(@buyhere)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyhere_url(@buyhere)
    assert_response :success
  end

  test "should update buyhere" do
    patch buyhere_url(@buyhere), params: { buyhere: {  } }
    assert_redirected_to buyhere_url(@buyhere)
  end

  test "should destroy buyhere" do
    assert_difference('Buyhere.count', -1) do
      delete buyhere_url(@buyhere)
    end

    assert_redirected_to buyheres_url
  end
end
