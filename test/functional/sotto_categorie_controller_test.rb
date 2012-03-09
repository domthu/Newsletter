require 'test_helper'

class SottoCategorieControllerTest < ActionController::TestCase
  setup do
    @sotto_categoria = sotto_categorie(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sotto_categorie)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sotto_categoria" do
    assert_difference('SottoCategoria.count') do
      post :create, :sotto_categoria => @sotto_categoria.attributes
    end

    assert_redirected_to sotto_categoria_path(assigns(:sotto_categoria))
  end

  test "should show sotto_categoria" do
    get :show, :id => @sotto_categoria.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sotto_categoria.to_param
    assert_response :success
  end

  test "should update sotto_categoria" do
    put :update, :id => @sotto_categoria.to_param, :sotto_categoria => @sotto_categoria.attributes
    assert_redirected_to sotto_categoria_path(assigns(:sotto_categoria))
  end

  test "should destroy sotto_categoria" do
    assert_difference('SottoCategoria.count', -1) do
      delete :destroy, :id => @sotto_categoria.to_param
    end

    assert_redirected_to sotto_categorie_path
  end
end
