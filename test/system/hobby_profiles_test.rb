require "application_system_test_case"

class HobbyProfilesTest < ApplicationSystemTestCase
  setup do
    @hobby_profile = hobby_profiles(:one)
  end

  test "visiting the index" do
    visit hobby_profiles_url
    assert_selector "h1", text: "Hobby Profiles"
  end

  test "creating a Hobby profile" do
    visit hobby_profiles_url
    click_on "New Hobby Profile"

    fill_in "Hobby", with: @hobby_profile.hobby_id
    fill_in "Profile", with: @hobby_profile.profile_id
    fill_in "Status", with: @hobby_profile.status
    click_on "Create Hobby profile"

    assert_text "Hobby profile was successfully created"
    click_on "Back"
  end

  test "updating a Hobby profile" do
    visit hobby_profiles_url
    click_on "Edit", match: :first

    fill_in "Hobby", with: @hobby_profile.hobby_id
    fill_in "Profile", with: @hobby_profile.profile_id
    fill_in "Status", with: @hobby_profile.status
    click_on "Update Hobby profile"

    assert_text "Hobby profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Hobby profile" do
    visit hobby_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hobby profile was successfully destroyed"
  end
end
