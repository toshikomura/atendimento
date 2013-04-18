class CreateTafs < ActiveRecord::Migration
  def change
    create_table :tafs do |t|
      t.integer :te_id, :null => false
      t.integer :tu_id, :null => false
      t.integer :top_id, :null => false
      t.integer :tts_id, :null => false
      t.datetime :ta01_horario_inicio_consulta, :null => false
      t.datetime :ta02_horario_fim_consulta, :null => false

      t.timestamps
    end
  end
end
