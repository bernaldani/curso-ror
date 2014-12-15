require 'test_helper'

class ComponentesModelosControllerTest < ActionController::TestCase
  setup do
    @componente_modelo = componentes_modelos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:componentes_modelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create componente_modelo" do
    assert_difference('ComponenteModelo.count') do
      post :create, componente_modelo: { componente_id: @componente_modelo.componente_id, modelo_id: @componente_modelo.modelo_id }
    end

    assert_redirected_to componente_modelo_path(assigns(:componente_modelo))
  end

  test "should show componente_modelo" do
    get :show, id: @componente_modelo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @componente_modelo
    assert_response :success
  end

  test "should update componente_modelo" do
    put :update, id: @componente_modelo, componente_modelo: { componente_id: @componente_modelo.componente_id, modelo_id: @componente_modelo.modelo_id }
    assert_redirected_to componente_modelo_path(assigns(:componente_modelo))
  end

  test "should destroy componente_modelo" do
    assert_difference('ComponenteModelo.count', -1) do
      delete :destroy, id: @componente_modelo
    end

    assert_redirected_to componentes_modelos_path
  end
end
