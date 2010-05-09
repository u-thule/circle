require 'test_helper'

class CirclesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:circles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create circle" do
    assert_difference('Circle.count') do
      post :create, :circle => { }
    end

    assert_redirected_to circle_path(assigns(:circle))
  end

  test "should show circle" do
    get :show, :id => circles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => circles(:one).to_param
    assert_response :success
  end

  test "should update circle" do
    put :update, :id => circles(:one).to_param, :circle => { }
    assert_redirected_to circle_path(assigns(:circle))
  end

  test "should destroy circle" do
    assert_difference('Circle.count', -1) do
      delete :destroy, :id => circles(:one).to_param
    end

    assert_redirected_to circles_path
  end
end
