require 'test_helper'

class OrganismiAssociatiControllerTest < ActionController::TestCase
  setup do
    @organismi_associato = organismi_associati(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organismi_associati)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organismi_associato" do
    assert_difference('OrganismiAssociato.count') do
      post :create, :organismi_associato => @organismi_associato.attributes
    end

    assert_redirected_to organismi_associato_path(assigns(:organismi_associato))
  end

  test "should show organismi_associato" do
    get :show, :id => @organismi_associato.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @organismi_associato.to_param
    assert_response :success
  end

  test "should update organismi_associato" do
    put :update, :id => @organismi_associato.to_param, :organismi_associato => @organismi_associato.attributes
    assert_redirected_to organismi_associato_path(assigns(:organismi_associato))
  end

  test "should destroy organismi_associato" do
    assert_difference('OrganismiAssociato.count', -1) do
      delete :destroy, :id => @organismi_associato.to_param
    end

    assert_redirected_to organismi_associati_path
  end
end
