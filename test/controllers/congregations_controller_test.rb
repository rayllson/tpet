require 'test_helper'

class CongregationsControllerTest < ActionController::TestCase
  setup do
    @congregation = congregations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congregations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congregation" do
    assert_difference('Congregation.count') do
      post :create, congregation: { address: @congregation.address, name: @congregation.name }
    end

    assert_redirected_to congregation_path(assigns(:congregation))
  end

  test "should show congregation" do
    get :show, id: @congregation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congregation
    assert_response :success
  end

  test "should update congregation" do
    patch :update, id: @congregation, congregation: { address: @congregation.address, name: @congregation.name }
    assert_redirected_to congregation_path(assigns(:congregation))
  end

  test "should destroy congregation" do
    assert_difference('Congregation.count', -1) do
      delete :destroy, id: @congregation
    end

    assert_redirected_to congregations_path
  end
end
