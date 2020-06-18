class DepartamentosController < ApplicationController
  before_action :set_departamento, only: [:show, :update, :destroy]

  # GET /departamentos
  def index
    @departamentos = Departamento.all

    render json: @departamentos
  end

  # GET /departamentos/1
  def show
    render json: @departamento
  end

  # POST /departamentos
  def create
    @departamento = Departamento.new(departamento_params)

    if @departamento.save
      render json: @departamento, status: :created, location: @departamento
    else
      render json: @departamento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /departamentos/1
  def update
    if @departamento.update(departamento_params)
      render json: @departamento
    else
      render json: @departamento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /departamentos/1
  def destroy
    @departamento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def departamento_params
      params.require(:departamento).permit(:name, :sigla)
    end
end
