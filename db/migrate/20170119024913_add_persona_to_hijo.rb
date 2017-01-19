class AddPersonaToHijo < ActiveRecord::Migration
  def change
    add_reference :hijos, :persona, index: true, foreign_key: true
  end
end
