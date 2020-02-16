require "application_system_test_case"

class ProfessionalInformationsTest < ApplicationSystemTestCase
  setup do
    @professional_information = professional_informations(:one)
  end

  test "visiting the index" do
    visit professional_informations_url
    assert_selector "h1", text: "Professional Informations"
  end

  test "creating a Professional information" do
    visit professional_informations_url
    click_on "New Professional Information"

    fill_in "Activity area", with: @professional_information.activity_area
    fill_in "Education", with: @professional_information.education
    fill_in "Profession", with: @professional_information.profession
    fill_in "Profile", with: @professional_information.profile_id
    fill_in "Status", with: @professional_information.status
    click_on "Create Professional information"

    assert_text "Professional information was successfully created"
    click_on "Back"
  end

  test "updating a Professional information" do
    visit professional_informations_url
    click_on "Edit", match: :first

    fill_in "Activity area", with: @professional_information.activity_area
    fill_in "Education", with: @professional_information.education
    fill_in "Profession", with: @professional_information.profession
    fill_in "Profile", with: @professional_information.profile_id
    fill_in "Status", with: @professional_information.status
    click_on "Update Professional information"

    assert_text "Professional information was successfully updated"
    click_on "Back"
  end

  test "destroying a Professional information" do
    visit professional_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professional information was successfully destroyed"
  end
end
