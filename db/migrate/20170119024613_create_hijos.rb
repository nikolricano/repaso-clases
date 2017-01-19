class CreateHijos < ActiveRecord::Migration
  def change
    create_table :hijos do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps null: false
    end
  end
end
