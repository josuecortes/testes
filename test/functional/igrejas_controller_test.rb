require 'test_helper'

class IgrejasControllerTest < ActionController::TestCase
  setup do
    @igreja = igrejas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:igrejas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create igreja" do
    assert_difference('Igreja.count') do
      post :create, igreja: { cnpj: @igreja.cnpj, nome: @igreja.nome }
    end

    assert_redirected_to igreja_path(assigns(:igreja))
  end

  test "should show igreja" do
    get :show, id: @igreja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @igreja
    assert_response :success
  end

  test "should update igreja" do
    put :update, id: @igreja, igreja: { cnpj: @igreja.cnpj, nome: @igreja.nome }
    assert_redirected_to igreja_path(assigns(:igreja))
  end

  test "should destroy igreja" do
    assert_difference('Igreja.count', -1) do
      delete :destroy, id: @igreja
    end

    assert_redirected_to igrejas_path
  end
end
