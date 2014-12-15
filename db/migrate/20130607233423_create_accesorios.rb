class CreateAccesorios < ActiveRecord::Migration
  def change
    create_table :accesorios do |t|
      t.integer :modelo_id
      t.string :descripcion

      t.timestamps
    end
  end
end
