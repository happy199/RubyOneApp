require 'test_helper'

class SujetTest < ActiveSupport::TestCase
  def setup
    @sujet1 = Sujet.new(libelle: "Mortalité infantile")
  end

  test "sujet1 should be valid" do
    assert @sujet1.valid?
  end
  test "libelle should be valid" do
    @sujet1.libelle = " "
    assert_not @sujet1.valid?
  end
  test "libelle shouldn't be less than 5 characters" do
    @sujet1.libelle = "a"*3
    assert_not @sujet1.valid?
  end
  test "libelle shouldn't be more than 100 characters" do
    @sujet1.libelle = "a"* 101
    assert_not @sujet1.valid?
  end
end