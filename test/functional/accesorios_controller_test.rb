require 'test_helper'

class AccesoriosControllerTest < ActionController::TestCase
  setup do
    @accesorio = accesorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accesorio" do
    assert_difference('Accesorio.count') do
      post :create, accesorio: { descripcion: @accesorio.descripcion, modelo_id: @accesorio.modelo_id }
    end

    assert_redirected_to accesorio_path(assigns(:accesorio))
  end

  test "should show accesorio" do
    get :show, id: @accesorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accesorio
    assert_response :success
  end

  test "should update accesorio" do
    put :update, id: @accesorio, accesorio: { descripcion: @accesorio.descripcion, modelo_id: @accesorio.modelo_id }
    assert_redirected_to accesorio_path(assigns(:accesorio))
  end

  test "should destroy accesorio" do
    assert_difference('Accesorio.count', -1) do
      delete :destroy, id: @accesorio
    end

    assert_redirected_to accesorios_path
  end
end
