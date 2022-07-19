require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should not get index" do
    get events_url
    assert_redirected_to new_user_session_path
  end

  test "should not get new" do
    get new_event_url
    assert_redirected_to new_user_session_path
  end
end
