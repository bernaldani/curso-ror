require 'test_helper'

class CapacidadesControllerTest < ActionController::TestCase
  setup do
    @capacidad = capacidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capacidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capacidad" do
    assert_difference('Capacidad.count') do
      post :create, capacidad: { descripcion: @capacidad.descripcion, numero: @capacidad.numero }
    end

    assert_redirected_to capacidad_path(assigns(:capacidad))
  end

  test "should show capacidad" do
    get :show, id: @capacidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capacidad
    assert_response :success
  end

  test "should update capacidad" do
    put :update, id: @capacidad, capacidad: { descripcion: @capacidad.descripcion, numero: @capacidad.numero }
    assert_redirected_to capacidad_path(assigns(:capacidad))
  end

  test "should destroy capacidad" do
    assert_difference('Capacidad.count', -1) do
      delete :destroy, id: @capacidad
    end

    assert_redirected_to capacidades_path
  end
end
