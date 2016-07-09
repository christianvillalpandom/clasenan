class CreateGrupoProfesor < ActiveRecord::Migration
  def change
    create_table :grupos_profesors do |t|
      t.references :grupo, index: true, foreign_key: true
      t.references :profesor, index: true, foreign_key: true
    end
  end
end
