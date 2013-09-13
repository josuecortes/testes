require 'test_helper'

class EnderecosControllerTest < ActionController::TestCase
  setup do
    @endereco = enderecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enderecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endereco" do
    assert_difference('Endereco.count') do
      post :create, endereco: { bairro: @endereco.bairro, cep: @endereco.cep, cidade: @endereco.cidade, email: @endereco.email, fax: @endereco.fax, logradouro: @endereco.logradouro, numero: @endereco.numero, referencia: @endereco.referencia, telefone_fixo: @endereco.telefone_fixo, telefone_movel: @endereco.telefone_movel }
    end

    assert_redirected_to endereco_path(assigns(:endereco))
  end

  test "should show endereco" do
    get :show, id: @endereco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endereco
    assert_response :success
  end

  test "should update endereco" do
    put :update, id: @endereco, endereco: { bairro: @endereco.bairro, cep: @endereco.cep, cidade: @endereco.cidade, email: @endereco.email, fax: @endereco.fax, logradouro: @endereco.logradouro, numero: @endereco.numero, referencia: @endereco.referencia, telefone_fixo: @endereco.telefone_fixo, telefone_movel: @endereco.telefone_movel }
    assert_redirected_to endereco_path(assigns(:endereco))
  end

  test "should destroy endereco" do
    assert_difference('Endereco.count', -1) do
      delete :destroy, id: @endereco
    end

    assert_redirected_to enderecos_path
  end
end
