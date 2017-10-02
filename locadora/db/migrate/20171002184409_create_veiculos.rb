class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :marca
      t.string :modelo
      t.string :cor
      t.boolean :arCondicionado
      t.boolean :vidroEletrico
      t.boolean :travaEletrica
      t.boolean :cambioAutomatio
      t.float :valorDiaria

      t.timestamps null: false
    end
  end
end
