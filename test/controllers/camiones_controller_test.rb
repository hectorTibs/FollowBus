require 'test_helper'

class CamionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camione = camiones(:one)
  end

  test "should get index" do
    get camiones_url
    assert_response :success
  end

  test "should get new" do
    get new_camione_url
    assert_response :success
  end

  test "should create camione" do
    assert_difference('Camione.count') do
      post camiones_url, params: { camione: { clave: @camione.clave, municipiofin: @camione.municipiofin, municipioinicio: @camione.municipioinicio, nombre: @camione.nombre, tiporuta: @camione.tiporuta } }
    end

    assert_redirected_to camione_url(Camione.last)
  end

  test "should show camione" do
    get camione_url(@camione)
    assert_response :success
  end

  test "should get edit" do
    get edit_camione_url(@camione)
    assert_response :success
  end

  test "should update camione" do
    patch camione_url(@camione), params: { camione: { clave: @camione.clave, municipiofin: @camione.municipiofin, municipioinicio: @camione.municipioinicio, nombre: @camione.nombre, tiporuta: @camione.tiporuta } }
    assert_redirected_to camione_url(@camione)
  end

  test "should destroy camione" do
    assert_difference('Camione.count', -1) do
      delete camione_url(@camione)
    end

    assert_redirected_to camiones_url
  end
end
