class FaculdadesController < ApplicationController
  before_action :set_faculdade, only: [:show, :update, :destroy]

  # GET /faculdades
  def index
    @faculdades = Faculdade.all

    render json: @faculdades
  end

  # GET /faculdades/1
  def show
    render json: @faculdade
  end

  # POST /faculdades
  def create
    @faculdade = Faculdade.new(faculdade_params)

    if @faculdade.save
      render json: @faculdade, status: :created, location: @faculdade
    else
      render json: @faculdade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /faculdades/1
  def update
    if @faculdade.update(faculdade_params)
      render json: @faculdade
    else
      render json: @faculdade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /faculdades/1
  def destroy
    @faculdade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculdade
      @faculdade = Faculdade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def faculdade_params
      params.require(:faculdade).permit(:name, :telefone, :endereco)
    end
end
