class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :codigo
      t.integer :serie_id
      t.integer :sistema_operativo_id
      t.string :nombre
      t.date :fecha_lanzamiento

      t.timestamps
    end
  end
end
