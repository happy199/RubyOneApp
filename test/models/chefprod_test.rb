require 'test_helper'

class ChefprodTest < ActiveSupport::TestCase
  def setup
    @chef=Chefprod.new(name: "Gokou", email: "azaf@gmail.com")
  end
  test "should be valid" do
    assert @chef.valid?
  end
  test "name should be present" do
    @chef.name = " "
    assert_not @chef.valid?
  end
  test "name should be less than 30 character" do
    @chef.name = "a"*31
    assert_not @chef.valid?
  end
  test "email should exist" do
    @chef.email = " "
    assert_not @chef.valid?
  end
  test "email should not be too long " do
    @chef.email = "a"*245+"@example.com"
    assert_not @chef.valid?
  end
  test "email should accept correct format" do
    valid_email = %w[user@example.com, Tidjani.happy@gmail.com]
    valid_email each do |valids|
      @chef.email = valids
      assert @chef.valid?, "#{valids.inspect} should be valid"
    end
  end
  test "reject invalid adress" do
    invalid_emails = %w[user@example, user@example,com, user.name@gmail. joe@bar+foo.com]
    invalid_emails.each do |invalids|
      @chef.email = invalids
      assert_not @chef.valid?, "#{invalids.inspect} should be invalids"
    end
  end
  test "email should be unique"

  end
  t
   
 endend