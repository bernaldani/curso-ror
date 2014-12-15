class CreateTableCapacidadesModelos < ActiveRecord::Migration
  def up
  	create_table :capacidades_modelos, id: false do |t|
      t.integer :capacidad_id
      t.integer :modelo_id
    end
  end

  def down
  	drop_table :capacidades_modelos
  end
end
