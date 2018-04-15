require 'test_helper'

class MannersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manners_index_url
    assert_response :success
  end

  test "should get new" do
    get manners_new_url
    assert_response :success
  end

  test "should get edit" do
    get manners_edit_url
    assert_response :success
  end

end
