require 'test_helper'

class FactureItemsControllerTest < ActionController::TestCase
  setup do
    @facture_item = facture_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facture_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facture_item" do
    assert_difference('FactureItem.count') do
      post :create, facture_item: { descritpion: @facture_item.descritpion, libelle: @facture_item.libelle, prix: @facture_item.prix, quantite: @facture_item.quantite }
    end

    assert_redirected_to facture_item_path(assigns(:facture_item))
  end

  test "should show facture_item" do
    get :show, id: @facture_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facture_item
    assert_response :success
  end

  test "should update facture_item" do
    put :update, id: @facture_item, facture_item: { descritpion: @facture_item.descritpion, libelle: @facture_item.libelle, prix: @facture_item.prix, quantite: @facture_item.quantite }
    assert_redirected_to facture_item_path(assigns(:facture_item))
  end

  test "should destroy facture_item" do
    assert_difference('FactureItem.count', -1) do
      delete :destroy, id: @facture_item
    end

    assert_redirected_to facture_items_path
  end
end
