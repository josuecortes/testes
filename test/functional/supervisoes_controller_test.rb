require 'test_helper'

class SupervisoesControllerTest < ActionController::TestCase
  setup do
    @supervisao = supervisoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supervisoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supervisao" do
    assert_difference('Supervisao.count') do
      post :create, supervisao: { nome: @supervisao.nome }
    end

    assert_redirected_to supervisao_path(assigns(:supervisao))
  end

  test "should show supervisao" do
    get :show, id: @supervisao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supervisao
    assert_response :success
  end

  test "should update supervisao" do
    put :update, id: @supervisao, supervisao: { nome: @supervisao.nome }
    assert_redirected_to supervisao_path(assigns(:supervisao))
  end

  test "should destroy supervisao" do
    assert_difference('Supervisao.count', -1) do
      delete :destroy, id: @supervisao
    end

    assert_redirected_to supervisoes_path
  end
end
