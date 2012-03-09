require 'test_helper'

class OrganismiTipiControllerTest < ActionController::TestCase
  setup do
    @organismi_tipi = organismi_tipi(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organismi_tipi)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organismi_tipi" do
    assert_difference('OrganismiTipi.count') do
      post :create, :organismi_tipi => @organismi_tipi.attributes
    end

    assert_redirected_to organismi_tipi_path(assigns(:organismi_tipi))
  end

  test "should show organismi_tipi" do
    get :show, :id => @organismi_tipi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @organismi_tipi.to_param
    assert_response :success
  end

  test "should update organismi_tipi" do
    put :update, :id => @organismi_tipi.to_param, :organismi_tipi => @organismi_tipi.attributes
    assert_redirected_to organismi_tipi_path(assigns(:organismi_tipi))
  end

  test "should destroy organismi_tipi" do
    assert_difference('OrganismiTipi.count', -1) do
      delete :destroy, :id => @organismi_tipi.to_param
    end

    assert_redirected_to organismi_tipi_index_path
  end
end
