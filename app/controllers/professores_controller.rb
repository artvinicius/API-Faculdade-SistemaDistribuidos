class ProfessoresController < ApplicationController
  before_action :set_professore, only: [:show, :update, :destroy]

  # GET /professores
  def index
    @professores = Professore.all

    render json: @professores
  end

  # GET /professores/1
  def show
    render json: @professore
  end

  # POST /professores
  def create
    @professore = Professore.new(professore_params)

    if @professore.save
      render json: @professore, status: :created, location: @professore
    else
      render json: @professore.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professores/1
  def update
    if @professore.update(professore_params)
      render json: @professore
    else
      render json: @professore.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professores/1
  def destroy
    @professore.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professore
      @professore = Professore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professore_params
      params.require(:professore).permit(:name, :matProfessor, :titulacao)
    end
end
