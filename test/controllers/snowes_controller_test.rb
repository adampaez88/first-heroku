require 'test_helper'

class SnowesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snowe = snowes(:one)
  end

  test "should get index" do
    get snowes_url, as: :json
    assert_response :success
  end

  test "should create snowe" do
    assert_difference('Snowe.count') do
      post snowes_url, params: { snowe: { shape: @snowe.shape } }, as: :json
    end

    assert_response 201
  end

  test "should show snowe" do
    get snowe_url(@snowe), as: :json
    assert_response :success
  end

  test "should update snowe" do
    patch snowe_url(@snowe), params: { snowe: { shape: @snowe.shape } }, as: :json
    assert_response 200
  end

  test "should destroy snowe" do
    assert_difference('Snowe.count', -1) do
      delete snowe_url(@snowe), as: :json
    end

    assert_response 204
  end
end
