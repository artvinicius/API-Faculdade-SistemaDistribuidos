class CreateFaculdades < ActiveRecord::Migration[6.0]
  def change
    create_table :faculdades do |t|
      t.string :name
      t.string :telefone
      t.string :endereco

      t.timestamps
    end
  end
end
