require 'test_helper'

class VisitFormsControllerTest < ActionController::TestCase
  setup do
    @visit_form = visit_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visit_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visit_form" do
    assert_difference('VisitForm.count') do
      post :create, visit_form: { address: @visit_form.address, cep: @visit_form.cep, city: @visit_form.city, form_date: @visit_form.form_date, language: @visit_form.language, name: @visit_form.name, observations: @visit_form.observations, phone: @visit_form.phone, sex: @visit_form.sex, state: @visit_form.state, user_id: @visit_form.user_id }
    end

    assert_redirected_to visit_form_path(assigns(:visit_form))
  end

  test "should show visit_form" do
    get :show, id: @visit_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visit_form
    assert_response :success
  end

  test "should update visit_form" do
    patch :update, id: @visit_form, visit_form: { address: @visit_form.address, cep: @visit_form.cep, city: @visit_form.city, form_date: @visit_form.form_date, language: @visit_form.language, name: @visit_form.name, observations: @visit_form.observations, phone: @visit_form.phone, sex: @visit_form.sex, state: @visit_form.state, user_id: @visit_form.user_id }
    assert_redirected_to visit_form_path(assigns(:visit_form))
  end

  test "should destroy visit_form" do
    assert_difference('VisitForm.count', -1) do
      delete :destroy, id: @visit_form
    end

    assert_redirected_to visit_forms_path
  end
end
