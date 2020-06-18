class CreateAlunos < ActiveRecord::Migration[6.0]
  def change
    create_table :alunos do |t|
      t.string :name
      t.string :matAluno
      t.string :nomeCurso

      t.timestamps
    end
  end
end
