require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
    # 'assert_no_difference'は以下と等価
    # before_count = User.count
    # post users_path, ...
    # after_count  = User.count
    # assert_equal before_count, after_count
    post users_path, params: {user: {name: "", email: "user@invalid", password: "foo", password_confirmation: "bar"}}
  end
  end
end
