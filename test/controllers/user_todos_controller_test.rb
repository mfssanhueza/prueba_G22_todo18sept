require 'test_helper'

class UserTodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_todos_index_url
    assert_response :success
  end

end
