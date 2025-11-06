require "application_system_test_case"

class RecoveryCommunitiesTest < ApplicationSystemTestCase
  setup do
    @recovery_community = recovery_communities(:one)
  end

  test "visiting the index" do
    visit recovery_communities_url
    assert_selector "h1", text: "Recovery communities"
  end

  test "should create recovery community" do
    visit recovery_communities_url
    click_on "New recovery community"

    fill_in "Acronym", with: @recovery_community.acronym
    fill_in "Description", with: @recovery_community.description
    fill_in "Name", with: @recovery_community.name
    click_on "Create Recovery community"

    assert_text "Recovery community was successfully created"
    click_on "Back"
  end

  test "should update Recovery community" do
    visit recovery_community_url(@recovery_community)
    click_on "Edit this recovery community", match: :first

    fill_in "Acronym", with: @recovery_community.acronym
    fill_in "Description", with: @recovery_community.description
    fill_in "Name", with: @recovery_community.name
    click_on "Update Recovery community"

    assert_text "Recovery community was successfully updated"
    click_on "Back"
  end

  test "should destroy Recovery community" do
    visit recovery_community_url(@recovery_community)
    click_on "Destroy this recovery community", match: :first

    assert_text "Recovery community was successfully destroyed"
  end
end
