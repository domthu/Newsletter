require 'test_helper'

class RegioniProvinceControllerTest < ActionController::TestCase
  setup do
    @regioni_provincia = regioni_province(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regioni_province)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regioni_provincia" do
    assert_difference('RegioniProvincia.count') do
      post :create, :regioni_provincia => @regioni_provincia.attributes
    end

    assert_redirected_to regioni_provincia_path(assigns(:regioni_provincia))
  end

  test "should show regioni_provincia" do
    get :show, :id => @regioni_provincia.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @regioni_provincia.to_param
    assert_response :success
  end

  test "should update regioni_provincia" do
    put :update, :id => @regioni_provincia.to_param, :regioni_provincia => @regioni_provincia.attributes
    assert_redirected_to regioni_provincia_path(assigns(:regioni_provincia))
  end

  test "should destroy regioni_provincia" do
    assert_difference('RegioniProvincia.count', -1) do
      delete :destroy, :id => @regioni_provincia.to_param
    end

    assert_redirected_to regioni_province_path
  end
end
