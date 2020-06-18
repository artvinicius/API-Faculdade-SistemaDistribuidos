require 'test_helper'

class ProfessoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professore = professores(:one)
  end

  test "should get index" do
    get professores_url, as: :json
    assert_response :success
  end

  test "should create professore" do
    assert_difference('Professore.count') do
      post professores_url, params: { professore: { matProfessor: @professore.matProfessor, name: @professore.name, titulacao: @professore.titulacao } }, as: :json
    end

    assert_response 201
  end

  test "should show professore" do
    get professore_url(@professore), as: :json
    assert_response :success
  end

  test "should update professore" do
    patch professore_url(@professore), params: { professore: { matProfessor: @professore.matProfessor, name: @professore.name, titulacao: @professore.titulacao } }, as: :json
    assert_response 200
  end

  test "should destroy professore" do
    assert_difference('Professore.count', -1) do
      delete professore_url(@professore), as: :json
    end

    assert_response 204
  end
end
