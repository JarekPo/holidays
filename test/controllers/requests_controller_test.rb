require "test_helper"

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should not show request" do
    get request_url(@request)
    assert_redirected_to new_user_session_path
  end

  test "should not get edit" do
    get edit_request_url(@request)
    assert_redirected_to new_user_session_path
  end

end
