require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "method full_name to return capitalize first name and last name" do
    #create a user
    user = User.new(first_name: "emily", last_name: "burns")
    #test if method return as intended
    assert_equal "Emily Burns", user.full_name
  end
end
