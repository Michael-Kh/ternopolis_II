require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get idnex" do
    get :idnex
    assert_response :success
  end

end
