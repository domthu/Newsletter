require 'test_helper'

class AllegatiControllerTest < ActionController::TestCase
  setup do
    @allegato = allegati(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allegati)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allegato" do
    assert_difference('Allegato.count') do
      post :create, :allegato => @allegato.attributes
    end

    assert_redirected_to allegato_path(assigns(:allegato))
  end

  test "should show allegato" do
    get :show, :id => @allegato.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @allegato.to_param
    assert_response :success
  end

  test "should update allegato" do
    put :update, :id => @allegato.to_param, :allegato => @allegato.attributes
    assert_redirected_to allegato_path(assigns(:allegato))
  end

  test "should destroy allegato" do
    assert_difference('Allegato.count', -1) do
      delete :destroy, :id => @allegato.to_param
    end

    assert_redirected_to allegati_path
  end
end
