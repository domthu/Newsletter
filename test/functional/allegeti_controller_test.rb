require 'test_helper'

class AllegetiControllerTest < ActionController::TestCase
  setup do
    @allegeti = allegeti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allegeti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allegeti" do
    assert_difference('Allegati.count') do
      post :create, :allegeti => @allegeti.attributes
    end

    assert_redirected_to allegeti_path(assigns(:allegeti))
  end

  test "should show allegeti" do
    get :show, :id => @allegeti.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @allegeti.to_param
    assert_response :success
  end

  test "should update allegeti" do
    put :update, :id => @allegeti.to_param, :allegeti => @allegeti.attributes
    assert_redirected_to allegeti_path(assigns(:allegeti))
  end

  test "should destroy allegeti" do
    assert_difference('Allegati.count', -1) do
      delete :destroy, :id => @allegeti.to_param
    end

    assert_redirected_to allegeti_path
  end
end
