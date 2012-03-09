require 'test_helper'

class GruppiBannersControllerTest < ActionController::TestCase
  setup do
    @gruppi_banner = gruppi_banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gruppi_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gruppi_banner" do
    assert_difference('GruppiBanner.count') do
      post :create, :gruppi_banner => @gruppi_banner.attributes
    end

    assert_redirected_to gruppi_banner_path(assigns(:gruppi_banner))
  end

  test "should show gruppi_banner" do
    get :show, :id => @gruppi_banner.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gruppi_banner.to_param
    assert_response :success
  end

  test "should update gruppi_banner" do
    put :update, :id => @gruppi_banner.to_param, :gruppi_banner => @gruppi_banner.attributes
    assert_redirected_to gruppi_banner_path(assigns(:gruppi_banner))
  end

  test "should destroy gruppi_banner" do
    assert_difference('GruppiBanner.count', -1) do
      delete :destroy, :id => @gruppi_banner.to_param
    end

    assert_redirected_to gruppi_banners_path
  end
end
