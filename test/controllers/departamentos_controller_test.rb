require 'test_helper'

class DepartamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @departamento = departamentos(:one)
  end

  test "should get index" do
    get departamentos_url, as: :json
    assert_response :success
  end

  test "should create departamento" do
    assert_difference('Departamento.count') do
      post departamentos_url, params: { departamento: { name: @departamento.name, sigla: @departamento.sigla } }, as: :json
    end

    assert_response 201
  end

  test "should show departamento" do
    get departamento_url(@departamento), as: :json
    assert_response :success
  end

  test "should update departamento" do
    patch departamento_url(@departamento), params: { departamento: { name: @departamento.name, sigla: @departamento.sigla } }, as: :json
    assert_response 200
  end

  test "should destroy departamento" do
    assert_difference('Departamento.count', -1) do
      delete departamento_url(@departamento), as: :json
    end

    assert_response 204
  end
end
