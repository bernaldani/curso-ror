class CreateComponentes < ActiveRecord::Migration
  def change
    create_table :componentes do |t|
      t.string :descripcion
      t.integer :proveedor_id

      t.timestamps
    end
  end
end
