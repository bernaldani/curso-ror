class CreateComponentesModelos < ActiveRecord::Migration
  def change
    create_table :componentes_modelos do |t|
      t.integer :modelo_id
      t.integer :componente_id

      t.timestamps
    end
  end
end
