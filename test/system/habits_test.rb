require "application_system_test_case"

class HabitsTest < ApplicationSystemTestCase
  setup do
    @habit = habits(:one)
  end

  test "visiting the index" do
    visit habits_url
    assert_selector "h1", text: "Habits"
  end

  test "creating a Habit" do
    visit habits_url
    click_on "New Habit"

    fill_in "Alcohol", with: @habit.alcohol
    fill_in "Drugs", with: @habit.drugs
    fill_in "Profile", with: @habit.profile_id
    fill_in "Status", with: @habit.status
    fill_in "Tobacco", with: @habit.tobacco
    click_on "Create Habit"

    assert_text "Habit was successfully created"
    click_on "Back"
  end

  test "updating a Habit" do
    visit habits_url
    click_on "Edit", match: :first

    fill_in "Alcohol", with: @habit.alcohol
    fill_in "Drugs", with: @habit.drugs
    fill_in "Profile", with: @habit.profile_id
    fill_in "Status", with: @habit.status
    fill_in "Tobacco", with: @habit.tobacco
    click_on "Update Habit"

    assert_text "Habit was successfully updated"
    click_on "Back"
  end

  test "destroying a Habit" do
    visit habits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habit was successfully destroyed"
  end
end
