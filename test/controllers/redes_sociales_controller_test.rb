require 'test_helper'

class RedesSocialesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redes_sociale = redes_sociales(:one)
  end

  test "should get index" do
    get redes_sociales_url
    assert_response :success
  end

  test "should get new" do
    get new_redes_sociale_url
    assert_response :success
  end

  test "should create redes_sociale" do
    assert_difference('RedesSociale.count') do
      post redes_sociales_url, params: { redes_sociale: { Clave: @redes_sociale.Clave, Nombre: @redes_sociale.Nombre } }
    end

    assert_redirected_to redes_sociale_url(RedesSociale.last)
  end

  test "should show redes_sociale" do
    get redes_sociale_url(@redes_sociale)
    assert_response :success
  end

  test "should get edit" do
    get edit_redes_sociale_url(@redes_sociale)
    assert_response :success
  end

  test "should update redes_sociale" do
    patch redes_sociale_url(@redes_sociale), params: { redes_sociale: { Clave: @redes_sociale.Clave, Nombre: @redes_sociale.Nombre } }
    assert_redirected_to redes_sociale_url(@redes_sociale)
  end

  test "should destroy redes_sociale" do
    assert_difference('RedesSociale.count', -1) do
      delete redes_sociale_url(@redes_sociale)
    end

    assert_redirected_to redes_sociales_url
  end
end
