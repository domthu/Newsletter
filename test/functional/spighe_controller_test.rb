require 'test_helper'

class SpigheControllerTest < ActionController::TestCase
  setup do
    @spiga = spighe(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spighe)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spiga" do
    assert_difference('Spiga.count') do
      post :create, :spiga => @spiga.attributes
    end

    assert_redirected_to spiga_path(assigns(:spiga))
  end

  test "should show spiga" do
    get :show, :id => @spiga.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spiga.to_param
    assert_response :success
  end

  test "should update spiga" do
    put :update, :id => @spiga.to_param, :spiga => @spiga.attributes
    assert_redirected_to spiga_path(assigns(:spiga))
  end

  test "should destroy spiga" do
    assert_difference('Spiga.count', -1) do
      delete :destroy, :id => @spiga.to_param
    end

    assert_redirected_to spighe_path
  end
end
