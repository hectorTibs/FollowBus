require 'test_helper'

class RutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rutum = ruta(:one)
  end

  test "should get index" do
    get ruta_url
    assert_response :success
  end

  test "should get new" do
    get new_rutum_url
    assert_response :success
  end

  test "should create rutum" do
    assert_difference('Rutum.count') do
      post ruta_url, params: { rutum: { Clave: @rutum.Clave, MunicipioFin: @rutum.MunicipioFin, MunicipioInicio: @rutum.MunicipioInicio, Nombre: @rutum.Nombre, TipoRuta: @rutum.TipoRuta } }
    end

    assert_redirected_to rutum_url(Rutum.last)
  end

  test "should show rutum" do
    get rutum_url(@rutum)
    assert_response :success
  end

  test "should get edit" do
    get edit_rutum_url(@rutum)
    assert_response :success
  end

  test "should update rutum" do
    patch rutum_url(@rutum), params: { rutum: { Clave: @rutum.Clave, MunicipioFin: @rutum.MunicipioFin, MunicipioInicio: @rutum.MunicipioInicio, Nombre: @rutum.Nombre, TipoRuta: @rutum.TipoRuta } }
    assert_redirected_to rutum_url(@rutum)
  end

  test "should destroy rutum" do
    assert_difference('Rutum.count', -1) do
      delete rutum_url(@rutum)
    end

    assert_redirected_to ruta_url
  end
end
