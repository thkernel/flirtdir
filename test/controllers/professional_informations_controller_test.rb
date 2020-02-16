require 'test_helper'

class ProfessionalInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_information = professional_informations(:one)
  end

  test "should get index" do
    get professional_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_information_url
    assert_response :success
  end

  test "should create professional_information" do
    assert_difference('ProfessionalInformation.count') do
      post professional_informations_url, params: { professional_information: { activity_area: @professional_information.activity_area, education: @professional_information.education, profession: @professional_information.profession, profile_id: @professional_information.profile_id, status: @professional_information.status } }
    end

    assert_redirected_to professional_information_url(ProfessionalInformation.last)
  end

  test "should show professional_information" do
    get professional_information_url(@professional_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_information_url(@professional_information)
    assert_response :success
  end

  test "should update professional_information" do
    patch professional_information_url(@professional_information), params: { professional_information: { activity_area: @professional_information.activity_area, education: @professional_information.education, profession: @professional_information.profession, profile_id: @professional_information.profile_id, status: @professional_information.status } }
    assert_redirected_to professional_information_url(@professional_information)
  end

  test "should destroy professional_information" do
    assert_difference('ProfessionalInformation.count', -1) do
      delete professional_information_url(@professional_information)
    end

    assert_redirected_to professional_informations_url
  end
end
