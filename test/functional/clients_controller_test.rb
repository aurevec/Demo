require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { adresse: @client.adresse, adresse_cp: @client.adresse_cp, adresse_numero: @client.adresse_numero, adresse_rue: @client.adresse_rue, adresse_ville: @client.adresse_ville, mail: @client.mail, mobile: @client.mobile, nom: @client.nom, numero_tva: @client.numero_tva, prenom: @client.prenom, telephone: @client.telephone }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { adresse: @client.adresse, adresse_cp: @client.adresse_cp, adresse_numero: @client.adresse_numero, adresse_rue: @client.adresse_rue, adresse_ville: @client.adresse_ville, mail: @client.mail, mobile: @client.mobile, nom: @client.nom, numero_tva: @client.numero_tva, prenom: @client.prenom, telephone: @client.telephone }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
