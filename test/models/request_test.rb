require "test_helper"

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
class RequestTest < ActiveSupport::TestCase
  test 'valid request' do
    request = Request.new(title: 'test', description: "test", start_date: "25/07/2022", end_date: "29/07/2022")
    assert request.valid?
  end
end

class RequestTest < ActiveSupport::TestCase
  test 'invalid title' do
    request = Request.new(description: "test", start_date: "25/07/2022", end_date: "29/07/2022")
    assert request.invalid?
  end
end
