class CreateAluguels < ActiveRecord::Migration
  def change
    create_table :aluguels do |t|
      t.references :veiculo, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true
      t.date :dataInicio
      t.date :datafim

      t.timestamps null: false
    end
  end
end
