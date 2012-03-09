require 'test_helper'

class RegioniControllerTest < ActionController::TestCase
  setup do
    @regione = regioni(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regioni)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regione" do
    assert_difference('Regione.count') do
      post :create, :regione => @regione.attributes
    end

    assert_redirected_to regione_path(assigns(:regione))
  end

  test "should show regione" do
    get :show, :id => @regione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @regione.to_param
    assert_response :success
  end

  test "should update regione" do
    put :update, :id => @regione.to_param, :regione => @regione.attributes
    assert_redirected_to regione_path(assigns(:regione))
  end

  test "should destroy regione" do
    assert_difference('Regione.count', -1) do
      delete :destroy, :id => @regione.to_param
    end

    assert_redirected_to regioni_path
  end
end
