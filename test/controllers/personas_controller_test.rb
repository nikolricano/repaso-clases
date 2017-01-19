require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dime_mascotas" do
    get :dime_mascotas
    assert_response :success
  end

end
