require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(email: 'test@test.com', password: "password")
    assert user.valid?
  end
end
