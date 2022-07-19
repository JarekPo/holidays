require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
class EventTest < ActiveSupport::TestCase
  test 'valid event' do
    event = Event.new(name: "test", notes: "test", start_date: "25/07/2022", end_date: "29/07/2022", user_id: 1)
    assert event.valid?
  end
end

class EventTest < ActiveSupport::TestCase
  test 'invalid dates' do
    event = Event.new(name: "test", notes: "test", start_date: "25/07/2022", end_date: "24/07/2022", user_id: 1)
    assert event.invalid?
  end
end
