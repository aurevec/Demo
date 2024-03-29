require 'test_helper'

class FacturesControllerTest < ActionController::TestCase
  setup do
    @facture = factures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facture" do
    assert_difference('Facture.count') do
      post :create, facture: { date_facturation: @facture.date_facturation, delai_paiement: @facture.delai_paiement, intitule: @facture.intitule, reference: @facture.reference }
    end

    assert_redirected_to facture_path(assigns(:facture))
  end

  test "should show facture" do
    get :show, id: @facture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facture
    assert_response :success
  end

  test "should update facture" do
    put :update, id: @facture, facture: { date_facturation: @facture.date_facturation, delai_paiement: @facture.delai_paiement, intitule: @facture.intitule, reference: @facture.reference }
    assert_redirected_to facture_path(assigns(:facture))
  end

  test "should destroy facture" do
    assert_difference('Facture.count', -1) do
      delete :destroy, id: @facture
    end

    assert_redirected_to factures_path
  end
end
