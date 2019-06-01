require 'test_helper'

class TonusEqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tonus_eq = tonus_eqs(:one)
  end

  test "should get index" do
    get tonus_eqs_url, as: :json
    assert_response :success
  end

  test "should create tonus_eq" do
    assert_difference('TonusEq.count') do
      post tonus_eqs_url, params: { tonus_eq: { artist: @tonus_eq.artist, genre: @tonus_eq.genre, song: @tonus_eq.song } }, as: :json
    end

    assert_response 201
  end

  test "should show tonus_eq" do
    get tonus_eq_url(@tonus_eq), as: :json
    assert_response :success
  end

  test "should update tonus_eq" do
    patch tonus_eq_url(@tonus_eq), params: { tonus_eq: { artist: @tonus_eq.artist, genre: @tonus_eq.genre, song: @tonus_eq.song } }, as: :json
    assert_response 200
  end

  test "should destroy tonus_eq" do
    assert_difference('TonusEq.count', -1) do
      delete tonus_eq_url(@tonus_eq), as: :json
    end

    assert_response 204
  end
end
