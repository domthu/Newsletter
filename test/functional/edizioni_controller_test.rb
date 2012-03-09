require 'test_helper'

class EdizioniControllerTest < ActionController::TestCase
  setup do
    @edizione = edizioni(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edizioni)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edizione" do
    assert_difference('Edizione.count') do
      post :create, :edizione => @edizione.attributes
    end

    assert_redirected_to edizione_path(assigns(:edizione))
  end

  test "should show edizione" do
    get :show, :id => @edizione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @edizione.to_param
    assert_response :success
  end

  test "should update edizione" do
    put :update, :id => @edizione.to_param, :edizione => @edizione.attributes
    assert_redirected_to edizione_path(assigns(:edizione))
  end

  test "should destroy edizione" do
    assert_difference('Edizione.count', -1) do
      delete :destroy, :id => @edizione.to_param
    end

    assert_redirected_to edizioni_path
  end
end
