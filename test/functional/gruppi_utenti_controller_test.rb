require 'test_helper'

class GruppiUtentiControllerTest < ActionController::TestCase
  setup do
    @gruppi_utente = gruppi_utenti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gruppi_utenti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gruppi_utente" do
    assert_difference('GruppiUtente.count') do
      post :create, :gruppi_utente => @gruppi_utente.attributes
    end

    assert_redirected_to gruppi_utente_path(assigns(:gruppi_utente))
  end

  test "should show gruppi_utente" do
    get :show, :id => @gruppi_utente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gruppi_utente.to_param
    assert_response :success
  end

  test "should update gruppi_utente" do
    put :update, :id => @gruppi_utente.to_param, :gruppi_utente => @gruppi_utente.attributes
    assert_redirected_to gruppi_utente_path(assigns(:gruppi_utente))
  end

  test "should destroy gruppi_utente" do
    assert_difference('GruppiUtente.count', -1) do
      delete :destroy, :id => @gruppi_utente.to_param
    end

    assert_redirected_to gruppi_utenti_path
  end
end
