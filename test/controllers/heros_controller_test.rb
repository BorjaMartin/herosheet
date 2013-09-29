require 'test_helper'

class HerosControllerTest < ActionController::TestCase
  setup do
    @hero = heros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hero" do
    assert_difference('Hero.count') do
      post :create, hero: { bio: @hero.bio, cuerpo: @hero.cuerpo, jugador: @hero.jugador, mente: @hero.mente, movimiento: @hero.movimiento, nivel: @hero.nivel, nombre: @hero.nombre, oro: @hero.oro, personaje: @hero.personaje, reputacion: @hero.reputacion, sexo: @hero.sexo, subclase: @hero.subclase }
    end

    assert_redirected_to hero_path(assigns(:hero))
  end

  test "should show hero" do
    get :show, id: @hero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hero
    assert_response :success
  end

  test "should update hero" do
    patch :update, id: @hero, hero: { bio: @hero.bio, cuerpo: @hero.cuerpo, jugador: @hero.jugador, mente: @hero.mente, movimiento: @hero.movimiento, nivel: @hero.nivel, nombre: @hero.nombre, oro: @hero.oro, personaje: @hero.personaje, reputacion: @hero.reputacion, sexo: @hero.sexo, subclase: @hero.subclase }
    assert_redirected_to hero_path(assigns(:hero))
  end

  test "should destroy hero" do
    assert_difference('Hero.count', -1) do
      delete :destroy, id: @hero
    end

    assert_redirected_to heros_path
  end
end
