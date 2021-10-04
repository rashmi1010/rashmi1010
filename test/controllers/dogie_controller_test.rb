require 'test_helper'

class DogieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dogie_index_url
    assert_response :success
  end

end
