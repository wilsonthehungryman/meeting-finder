require "application_system_test_case"

class MeetingsTest < ApplicationSystemTestCase
  setup do
    @meeting = meetings(:one)
  end

  test "visiting the index" do
    visit meetings_url
    assert_selector "h1", text: "Meetings"
  end

  test "should create meeting" do
    visit meetings_url
    click_on "New meeting"

    fill_in "Join info", with: @meeting.join_info_id
    fill_in "Location", with: @meeting.location_id
    fill_in "Recovery community", with: @meeting.recovery_community_id
    fill_in "Source", with: @meeting.source
    fill_in "Time", with: @meeting.time
    fill_in "Type", with: @meeting.type
    click_on "Create Meeting"

    assert_text "Meeting was successfully created"
    click_on "Back"
  end

  test "should update Meeting" do
    visit meeting_url(@meeting)
    click_on "Edit this meeting", match: :first

    fill_in "Join info", with: @meeting.join_info_id
    fill_in "Location", with: @meeting.location_id
    fill_in "Recovery community", with: @meeting.recovery_community_id
    fill_in "Source", with: @meeting.source
    fill_in "Time", with: @meeting.time.to_s
    fill_in "Type", with: @meeting.type
    click_on "Update Meeting"

    assert_text "Meeting was successfully updated"
    click_on "Back"
  end

  test "should destroy Meeting" do
    visit meeting_url(@meeting)
    click_on "Destroy this meeting", match: :first

    assert_text "Meeting was successfully destroyed"
  end
end
