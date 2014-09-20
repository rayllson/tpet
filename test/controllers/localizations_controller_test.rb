require 'test_helper'

class LocalizationsControllerTest < ActionController::TestCase
  setup do
    @localization = localizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:localizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create localization" do
    assert_difference('Localization.count') do
      post :create, localization: { address: @localization.address, name: @localization.name }
    end

    assert_redirected_to localization_path(assigns(:localization))
  end

  test "should show localization" do
    get :show, id: @localization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @localization
    assert_response :success
  end

  test "should update localization" do
    patch :update, id: @localization, localization: { address: @localization.address, name: @localization.name }
    assert_redirected_to localization_path(assigns(:localization))
  end

  test "should destroy localization" do
    assert_difference('Localization.count', -1) do
      delete :destroy, id: @localization
    end

    assert_redirected_to localizations_path
  end
end
