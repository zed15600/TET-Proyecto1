class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :userName
      t.string :password
      t.timestamps
    end
  end
end
