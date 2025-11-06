require "test_helper"

class RecoveryCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recovery_community = recovery_communities(:one)
  end

  test "should get index" do
    get recovery_communities_url
    assert_response :success
  end

  test "should get new" do
    get new_recovery_community_url
    assert_response :success
  end

  test "should create recovery_community" do
    assert_difference("RecoveryCommunity.count") do
      post recovery_communities_url, params: { recovery_community: { acronym: @recovery_community.acronym, description: @recovery_community.description, name: @recovery_community.name } }
    end

    assert_redirected_to recovery_community_url(RecoveryCommunity.last)
  end

  test "should show recovery_community" do
    get recovery_community_url(@recovery_community)
    assert_response :success
  end

  test "should get edit" do
    get edit_recovery_community_url(@recovery_community)
    assert_response :success
  end

  test "should update recovery_community" do
    patch recovery_community_url(@recovery_community), params: { recovery_community: { acronym: @recovery_community.acronym, description: @recovery_community.description, name: @recovery_community.name } }
    assert_redirected_to recovery_community_url(@recovery_community)
  end

  test "should destroy recovery_community" do
    assert_difference("RecoveryCommunity.count", -1) do
      delete recovery_community_url(@recovery_community)
    end

    assert_redirected_to recovery_communities_url
  end
end
