require 'test_helper'

class OrganismiControllerTest < ActionController::TestCase
  setup do
    @organismo = organismi(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organismi)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organismo" do
    assert_difference('Organismo.count') do
      post :create, :organismo => @organismo.attributes
    end

    assert_redirected_to organismo_path(assigns(:organismo))
  end

  test "should show organismo" do
    get :show, :id => @organismo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @organismo.to_param
    assert_response :success
  end

  test "should update organismo" do
    put :update, :id => @organismo.to_param, :organismo => @organismo.attributes
    assert_redirected_to organismo_path(assigns(:organismo))
  end

  test "should destroy organismo" do
    assert_difference('Organismo.count', -1) do
      delete :destroy, :id => @organismo.to_param
    end

    assert_redirected_to organismi_path
  end
end
