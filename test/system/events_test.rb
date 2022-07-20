require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "Should sign up" do
    visit events_url
    click_on "Sign up"
    fill_in "Email", with: "user@hms.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    assert_text "Welcome! You have signed up successfully."
  end
  test "Should create Holiday Request" do
    visit events_url
    click_on "Sign up"
    fill_in "Email", with: "user@hms.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    assert_text "Welcome! You have signed up successfully."
    click_on "New Holiday Request"
    fill_in "Name", with: "test"
    fill_in "Start date", with: "20082022"
    fill_in "End date", with: "23092022"
    click_on "Submit"
    assert_text "Event was successfully created."
  end
  test "Should edit Holiday Request" do
    visit events_url
    click_on "Sign up"
    fill_in "Email", with: "user@hms.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    assert_text "Welcome! You have signed up successfully."
    click_on "New Holiday Request"
    fill_in "Name", with: "test"
    fill_in "Start date", with: "20082022"
    fill_in "End date", with: "23092022"
    click_on "Submit"
    assert_text "Event was successfully created."
    click_on "Edit This Holiday Request"
    fill_in "Name", with: "edited"
    click_on "Submit"
    assert_text "Event was successfully updated."
  end
  test "Should delete Holiday Request" do
    visit events_url
    click_on "Sign up"
    fill_in "Email", with: "user@hms.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    assert_text "Welcome! You have signed up successfully."
    click_on "New Holiday Request"
    fill_in "Name", with: "test"
    fill_in "Start date", with: "20082022"
    fill_in "End date", with: "23092022"
    click_on "Submit"
    assert_text "Event was successfully created."
    click_on "Cancel This Request"
    assert_text "Event was successfully destroyed."
  end

end
