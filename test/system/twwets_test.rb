require "application_system_test_case"

class TwwetsTest < ApplicationSystemTestCase
  setup do
    @twwet = twwets(:one)
  end

  test "visiting the index" do
    visit twwets_url
    assert_selector "h1", text: "Twwets"
  end

  test "should create twwet" do
    visit twwets_url
    click_on "New twwet"

    fill_in "Message", with: @twwet.message
    fill_in "Tdate", with: @twwet.tdate
    click_on "Create Twwet"

    assert_text "Twwet was successfully created"
    click_on "Back"
  end

  test "should update Twwet" do
    visit twwet_url(@twwet)
    click_on "Edit this twwet", match: :first

    fill_in "Message", with: @twwet.message
    fill_in "Tdate", with: @twwet.tdate
    click_on "Update Twwet"

    assert_text "Twwet was successfully updated"
    click_on "Back"
  end

  test "should destroy Twwet" do
    visit twwet_url(@twwet)
    click_on "Destroy this twwet", match: :first

    assert_text "Twwet was successfully destroyed"
  end
end
