require 'test_helper'

class HobbyProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hobby_profile = hobby_profiles(:one)
  end

  test "should get index" do
    get hobby_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_hobby_profile_url
    assert_response :success
  end

  test "should create hobby_profile" do
    assert_difference('HobbyProfile.count') do
      post hobby_profiles_url, params: { hobby_profile: { hobby_id: @hobby_profile.hobby_id, profile_id: @hobby_profile.profile_id, status: @hobby_profile.status } }
    end

    assert_redirected_to hobby_profile_url(HobbyProfile.last)
  end

  test "should show hobby_profile" do
    get hobby_profile_url(@hobby_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_hobby_profile_url(@hobby_profile)
    assert_response :success
  end

  test "should update hobby_profile" do
    patch hobby_profile_url(@hobby_profile), params: { hobby_profile: { hobby_id: @hobby_profile.hobby_id, profile_id: @hobby_profile.profile_id, status: @hobby_profile.status } }
    assert_redirected_to hobby_profile_url(@hobby_profile)
  end

  test "should destroy hobby_profile" do
    assert_difference('HobbyProfile.count', -1) do
      delete hobby_profile_url(@hobby_profile)
    end

    assert_redirected_to hobby_profiles_url
  end
end
