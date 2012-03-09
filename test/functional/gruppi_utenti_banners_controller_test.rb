require 'test_helper'

class GruppiUtentiBannersControllerTest < ActionController::TestCase
  setup do
    @gruppi_utenti_banner = gruppi_utenti_banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gruppi_utenti_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gruppi_utenti_banner" do
    assert_difference('GruppiUtentiBanner.count') do
      post :create, :gruppi_utenti_banner => @gruppi_utenti_banner.attributes
    end

    assert_redirected_to gruppi_utenti_banner_path(assigns(:gruppi_utenti_banner))
  end

  test "should show gruppi_utenti_banner" do
    get :show, :id => @gruppi_utenti_banner.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gruppi_utenti_banner.to_param
    assert_response :success
  end

  test "should update gruppi_utenti_banner" do
    put :update, :id => @gruppi_utenti_banner.to_param, :gruppi_utenti_banner => @gruppi_utenti_banner.attributes
    assert_redirected_to gruppi_utenti_banner_path(assigns(:gruppi_utenti_banner))
  end

  test "should destroy gruppi_utenti_banner" do
    assert_difference('GruppiUtentiBanner.count', -1) do
      delete :destroy, :id => @gruppi_utenti_banner.to_param
    end

    assert_redirected_to gruppi_utenti_banners_path
  end
end
