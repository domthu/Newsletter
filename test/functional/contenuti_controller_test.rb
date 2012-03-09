require 'test_helper'

class ContenutiControllerTest < ActionController::TestCase
  setup do
    @contenuto = contenuti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contenuti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contenuto" do
    assert_difference('Contenuto.count') do
      post :create, :contenuto => @contenuto.attributes
    end

    assert_redirected_to contenuto_path(assigns(:contenuto))
  end

  test "should show contenuto" do
    get :show, :id => @contenuto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @contenuto.to_param
    assert_response :success
  end

  test "should update contenuto" do
    put :update, :id => @contenuto.to_param, :contenuto => @contenuto.attributes
    assert_redirected_to contenuto_path(assigns(:contenuto))
  end

  test "should destroy contenuto" do
    assert_difference('Contenuto.count', -1) do
      delete :destroy, :id => @contenuto.to_param
    end

    assert_redirected_to contenuti_path
  end
end
