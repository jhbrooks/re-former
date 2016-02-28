require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    # post :create
    # assert_response :success
    post :create, user: { username: "Example", email: "ex@example.com",
                          password: "3x4mp13" }
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, id: users(:one)
    assert_response :success
  end

  test "should put update" do
    put :update, id: users(:one), user: { username: "Example",
                                                email: "ex@example.com",
                                                password: "3x4mp13" }
    assert_response :redirect
  end
end
