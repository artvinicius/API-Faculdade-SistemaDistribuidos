class CreateProfessores < ActiveRecord::Migration[6.0]
  def change
    create_table :professores do |t|
      t.string :name
      t.string :matProfessor
      t.string :titulacao

      t.timestamps
    end
  end
end
