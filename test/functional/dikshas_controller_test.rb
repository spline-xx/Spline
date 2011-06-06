require 'test_helper'

class DikshasControllerTest < ActionController::TestCase
  setup do
    @diksha = dikshas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dikshas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diksha" do
    assert_difference('Diksha.count') do
      post :create, :diksha => @diksha.attributes
    end

    assert_redirected_to diksha_path(assigns(:diksha))
  end

  test "should show diksha" do
    get :show, :id => @diksha.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @diksha.to_param
    assert_response :success
  end

  test "should update diksha" do
    put :update, :id => @diksha.to_param, :diksha => @diksha.attributes
    assert_redirected_to diksha_path(assigns(:diksha))
  end

  test "should destroy diksha" do
    assert_difference('Diksha.count', -1) do
      delete :destroy, :id => @diksha.to_param
    end

    assert_redirected_to dikshas_path
  end
end
