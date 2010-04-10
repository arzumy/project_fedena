require File.expand_path(File.dirname(__FILE__) + './../test_helper')

class UserTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:user)
    assert_valid Factory.build(:admin_user)
  end
end
