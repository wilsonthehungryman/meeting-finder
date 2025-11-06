require "application_system_test_case"

class JoinInfosTest < ApplicationSystemTestCase
  setup do
    @join_info = join_infos(:one)
  end

  test "visiting the index" do
    visit join_infos_url
    assert_selector "h1", text: "Join infos"
  end

  test "should create join info" do
    visit join_infos_url
    click_on "New join info"

    fill_in "Link", with: @join_info.link
    fill_in "Meeting", with: @join_info.meeting_id
    fill_in "Meeting provider", with: @join_info.meeting_provider
    fill_in "Password", with: @join_info.password
    click_on "Create Join info"

    assert_text "Join info was successfully created"
    click_on "Back"
  end

  test "should update Join info" do
    visit join_info_url(@join_info)
    click_on "Edit this join info", match: :first

    fill_in "Link", with: @join_info.link
    fill_in "Meeting", with: @join_info.meeting_id
    fill_in "Meeting provider", with: @join_info.meeting_provider
    fill_in "Password", with: @join_info.password
    click_on "Update Join info"

    assert_text "Join info was successfully updated"
    click_on "Back"
  end

  test "should destroy Join info" do
    visit join_info_url(@join_info)
    click_on "Destroy this join info", match: :first

    assert_text "Join info was successfully destroyed"
  end
end
