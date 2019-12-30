require 'test_helper'

class FlakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flake = flakes(:one)
  end

  test "should get index" do
    get flakes_url, as: :json
    assert_response :success
  end

  test "should create flake" do
    assert_difference('Flake.count') do
      post flakes_url, params: { flake: { shape: @flake.shape } }, as: :json
    end

    assert_response 201
  end

  test "should show flake" do
    get flake_url(@flake), as: :json
    assert_response :success
  end

  test "should update flake" do
    patch flake_url(@flake), params: { flake: { shape: @flake.shape } }, as: :json
    assert_response 200
  end

  test "should destroy flake" do
    assert_difference('Flake.count', -1) do
      delete flake_url(@flake), as: :json
    end

    assert_response 204
  end
end
