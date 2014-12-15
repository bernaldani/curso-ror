class CreateCapacidades < ActiveRecord::Migration
  def change
    create_table :capacidades do |t|
      t.integer :numero
      t.string :descripcion

      t.timestamps
    end
  end
end
