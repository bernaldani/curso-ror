class CreateSistemasOperativos < ActiveRecord::Migration
  def change
    create_table :sistemas_operativos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
