require 'test_helper'

class AlunosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aluno = alunos(:one)
  end

  test "should get index" do
    get alunos_url, as: :json
    assert_response :success
  end

  test "should create aluno" do
    assert_difference('Aluno.count') do
      post alunos_url, params: { aluno: { matAluno: @aluno.matAluno, name: @aluno.name, nomeCurso: @aluno.nomeCurso } }, as: :json
    end

    assert_response 201
  end

  test "should show aluno" do
    get aluno_url(@aluno), as: :json
    assert_response :success
  end

  test "should update aluno" do
    patch aluno_url(@aluno), params: { aluno: { matAluno: @aluno.matAluno, name: @aluno.name, nomeCurso: @aluno.nomeCurso } }, as: :json
    assert_response 200
  end

  test "should destroy aluno" do
    assert_difference('Aluno.count', -1) do
      delete aluno_url(@aluno), as: :json
    end

    assert_response 204
  end
end
