require 'test_helper'

class CelulasControllerTest < ActionController::TestCase
  setup do
    @celula = celulas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:celulas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create celula" do
    assert_difference('Celula.count') do
      post :create, celula: { data_nascimento: @celula.data_nascimento, nome: @celula.nome }
    end

    assert_redirected_to celula_path(assigns(:celula))
  end

  test "should show celula" do
    get :show, id: @celula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @celula
    assert_response :success
  end

  test "should update celula" do
    put :update, id: @celula, celula: { data_nascimento: @celula.data_nascimento, nome: @celula.nome }
    assert_redirected_to celula_path(assigns(:celula))
  end

  test "should destroy celula" do
    assert_difference('Celula.count', -1) do
      delete :destroy, id: @celula
    end

    assert_redirected_to celulas_path
  end
end
