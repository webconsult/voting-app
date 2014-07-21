require 'test_helper'

class NomineesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get vote" do
    get :vote
    assert_response :success
  end

end
