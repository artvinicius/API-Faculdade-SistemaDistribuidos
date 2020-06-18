class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :update, :destroy]

  # GET /alunos
  def index
    @alunos = Aluno.all

    render json: @alunos
  end

  # GET /alunos/1
  def show
    render json: @aluno
  end

  # POST /alunos
  def create
    @aluno = Aluno.new(aluno_params)

    if @aluno.save
      render json: @aluno, status: :created, location: @aluno
    else
      render json: @aluno.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alunos/1
  def update
    if @aluno.update(aluno_params)
      render json: @aluno
    else
      render json: @aluno.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alunos/1
  def destroy
    @aluno.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def aluno_params
      params.require(:aluno).permit(:name, :matAluno, :nomeCurso)
    end
end
