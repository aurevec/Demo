require 'test_helper'

class TvasControllerTest < ActionController::TestCase
  setup do
    @tva = tvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tva" do
    assert_difference('Tva.count') do
      post :create, tva: { display: @tva.display, libelle: @tva.libelle, value: @tva.value }
    end

    assert_redirected_to tva_path(assigns(:tva))
  end

  test "should show tva" do
    get :show, id: @tva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tva
    assert_response :success
  end

  test "should update tva" do
    put :update, id: @tva, tva: { display: @tva.display, libelle: @tva.libelle, value: @tva.value }
    assert_redirected_to tva_path(assigns(:tva))
  end

  test "should destroy tva" do
    assert_difference('Tva.count', -1) do
      delete :destroy, id: @tva
    end

    assert_redirected_to tvas_path
  end
end
