require "test_helper"

class TwwetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twwet = twwets(:one)
  end

  test "should get index" do
    get twwets_url
    assert_response :success
  end

  test "should get new" do
    get new_twwet_url
    assert_response :success
  end

  test "should create twwet" do
    assert_difference("Twwet.count") do
      post twwets_url, params: { twwet: { message: @twwet.message, tdate: @twwet.tdate } }
    end

    assert_redirected_to twwet_url(Twwet.last)
  end

  test "should show twwet" do
    get twwet_url(@twwet)
    assert_response :success
  end

  test "should get edit" do
    get edit_twwet_url(@twwet)
    assert_response :success
  end

  test "should update twwet" do
    patch twwet_url(@twwet), params: { twwet: { message: @twwet.message, tdate: @twwet.tdate } }
    assert_redirected_to twwet_url(@twwet)
  end

  test "should destroy twwet" do
    assert_difference("Twwet.count", -1) do
      delete twwet_url(@twwet)
    end

    assert_redirected_to twwets_url
  end
end
