class CreateSezioni < ActiveRecord::Migration
  def self.up
    create_table :sezioni do |t|
      t.integer :id
      t.string :sezione
      t.integer :ordinamento
      t.boolean :se_visibile
      t.string :immagine
      t.string :style

      t.timestamps
    end
  end

  def self.down
    drop_table :sezioni
  end
end
