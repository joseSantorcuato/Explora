require 'test_helper'

class PrincipalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get principal_index_url
    assert_response :success
  end

  test "should get play" do
    get principal_play_url
    assert_response :success
  end

  test "should get read" do
    get principal_read_url
    assert_response :success
  end

  test "should get digiread" do
    get principal_digiread_url
    assert_response :success
  end

end
