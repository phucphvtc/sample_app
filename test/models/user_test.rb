require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name:'nam', email:"nam@gmail.com")
  end
  test "should be vaild" do
    assert @user.vaild?
end
