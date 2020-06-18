class CreateCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :cursos do |t|
      t.string :name
      t.string :sigla
      t.string :codCurso

      t.timestamps
    end
  end
end
