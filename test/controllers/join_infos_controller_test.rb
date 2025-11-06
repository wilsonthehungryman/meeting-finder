require "test_helper"

class JoinInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_info = join_infos(:one)
  end

  test "should get index" do
    get join_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_join_info_url
    assert_response :success
  end

  test "should create join_info" do
    assert_difference("JoinInfo.count") do
      post join_infos_url, params: { join_info: { link: @join_info.link, meeting_id: @join_info.meeting_id, meeting_provider: @join_info.meeting_provider, password: @join_info.password } }
    end

    assert_redirected_to join_info_url(JoinInfo.last)
  end

  test "should show join_info" do
    get join_info_url(@join_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_info_url(@join_info)
    assert_response :success
  end

  test "should update join_info" do
    patch join_info_url(@join_info), params: { join_info: { link: @join_info.link, meeting_id: @join_info.meeting_id, meeting_provider: @join_info.meeting_provider, password: @join_info.password } }
    assert_redirected_to join_info_url(@join_info)
  end

  test "should destroy join_info" do
    assert_difference("JoinInfo.count", -1) do
      delete join_info_url(@join_info)
    end

    assert_redirected_to join_infos_url
  end
end
