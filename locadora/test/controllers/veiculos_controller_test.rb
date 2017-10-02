require 'test_helper'

class VeiculosControllerTest < ActionController::TestCase
  setup do
    @veiculo = veiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veiculo" do
    assert_difference('Veiculo.count') do
      post :create, veiculo: { arCondicionado: @veiculo.arCondicionado, cambioAutomatio: @veiculo.cambioAutomatio, cor: @veiculo.cor, marca: @veiculo.marca, modelo: @veiculo.modelo, placa: @veiculo.placa, travaEletrica: @veiculo.travaEletrica, valorDiaria: @veiculo.valorDiaria, vidroEletrico: @veiculo.vidroEletrico }
    end

    assert_redirected_to veiculo_path(assigns(:veiculo))
  end

  test "should show veiculo" do
    get :show, id: @veiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veiculo
    assert_response :success
  end

  test "should update veiculo" do
    patch :update, id: @veiculo, veiculo: { arCondicionado: @veiculo.arCondicionado, cambioAutomatio: @veiculo.cambioAutomatio, cor: @veiculo.cor, marca: @veiculo.marca, modelo: @veiculo.modelo, placa: @veiculo.placa, travaEletrica: @veiculo.travaEletrica, valorDiaria: @veiculo.valorDiaria, vidroEletrico: @veiculo.vidroEletrico }
    assert_redirected_to veiculo_path(assigns(:veiculo))
  end

  test "should destroy veiculo" do
    assert_difference('Veiculo.count', -1) do
      delete :destroy, id: @veiculo
    end

    assert_redirected_to veiculos_path
  end
end
