require 'test_helper'

class Api::V1::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_books_path
    assert_response :success
  end

end
