require 'test_helper'

class TafsControllerTest < ActionController::TestCase
  setup do
    @taf = tafs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tafs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taf" do
    assert_difference('Taf.count') do
      post :create, taf: { ta01_horario_inicio_consulta: @taf.ta01_horario_inicio_consulta, ta02_horario_fim_consulta: @taf.ta02_horario_fim_consulta, te_id: @taf.te_id, top_id: @taf.top_id, tts_id: @taf.tts_id, tu_id: @taf.tu_id }
    end

    assert_redirected_to taf_path(assigns(:taf))
  end

  test "should show taf" do
    get :show, id: @taf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taf
    assert_response :success
  end

  test "should update taf" do
    put :update, id: @taf, taf: { ta01_horario_inicio_consulta: @taf.ta01_horario_inicio_consulta, ta02_horario_fim_consulta: @taf.ta02_horario_fim_consulta, te_id: @taf.te_id, top_id: @taf.top_id, tts_id: @taf.tts_id, tu_id: @taf.tu_id }
    assert_redirected_to taf_path(assigns(:taf))
  end

  test "should destroy taf" do
    assert_difference('Taf.count', -1) do
      delete :destroy, id: @taf
    end

    assert_redirected_to tafs_path
  end
end
