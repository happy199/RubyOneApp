require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user=Users.create!(email: "happy@gmail.com", password:"password")
  end
  test "invalid login is rejected" do
    get login_path
    assert_template'login/index'
    post login_path, params:{ session: {email: " ",password: " "}}
    assert_template'login/index'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
  test "valid login credentials accept and start login" do
    get login_path
    assert_template'login/index'
    post login_path, params: { session: {email: @user.email, password: @user.password}}
    follow_redirect!
    assert_template 'article/show'
    assert_not flash.empty?
  end
end
