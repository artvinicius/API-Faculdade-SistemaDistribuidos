require 'test_helper'

class FaculdadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculdade = faculdades(:one)
  end

  test "should get index" do
    get faculdades_url, as: :json
    assert_response :success
  end

  test "should create faculdade" do
    assert_difference('Faculdade.count') do
      post faculdades_url, params: { faculdade: { endereco: @faculdade.endereco, name: @faculdade.name, telefone: @faculdade.telefone } }, as: :json
    end

    assert_response 201
  end

  test "should show faculdade" do
    get faculdade_url(@faculdade), as: :json
    assert_response :success
  end

  test "should update faculdade" do
    patch faculdade_url(@faculdade), params: { faculdade: { endereco: @faculdade.endereco, name: @faculdade.name, telefone: @faculdade.telefone } }, as: :json
    assert_response 200
  end

  test "should destroy faculdade" do
    assert_difference('Faculdade.count', -1) do
      delete faculdade_url(@faculdade), as: :json
    end

    assert_response 204
  end
end
