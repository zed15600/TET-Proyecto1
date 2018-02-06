class CreatePosicions < ActiveRecord::Migration[5.1]
  def change
    create_table :posicions do |t|
      t.string :lat
      t.string :lon
      t.string :fecha
      t.string :hora
      t.timestamps
      t.references :usuario
    end
  end
end
