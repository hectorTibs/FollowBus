require 'test_helper'

class IncidenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incidencium = incidencia(:one)
  end

  test "should get index" do
    get incidencia_url
    assert_response :success
  end

  test "should get new" do
    get new_incidencium_url
    assert_response :success
  end

  test "should create incidencium" do
    assert_difference('Incidencium.count') do
      post incidencia_url, params: { incidencium: { Comentario: @incidencium.Comentario, Compartir: @incidencium.Compartir, EmpresaId: @incidencium.EmpresaId, PostRed: @incidencium.PostRed, RedSocial: @incidencium.RedSocial, RutaId: @incidencium.RutaId } }
    end

    assert_redirected_to incidencium_url(Incidencium.last)
  end

  test "should show incidencium" do
    get incidencium_url(@incidencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_incidencium_url(@incidencium)
    assert_response :success
  end

  test "should update incidencium" do
    patch incidencium_url(@incidencium), params: { incidencium: { Comentario: @incidencium.Comentario, Compartir: @incidencium.Compartir, EmpresaId: @incidencium.EmpresaId, PostRed: @incidencium.PostRed, RedSocial: @incidencium.RedSocial, RutaId: @incidencium.RutaId } }
    assert_redirected_to incidencium_url(@incidencium)
  end

  test "should destroy incidencium" do
    assert_difference('Incidencium.count', -1) do
      delete incidencium_url(@incidencium)
    end

    assert_redirected_to incidencia_url
  end
end
