require 'test_helper'

class ColorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get color_index_url
    assert_response :success
  end

  test "should get new" do
    get color_new_url
    assert_response :success
  end

end
