require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest
  test "réponse de welcome" do
    get welcome_index_url
    assert_response :success
  end
  test "réponse de root" do
    get root_url
    assert_response :success
  end
end
