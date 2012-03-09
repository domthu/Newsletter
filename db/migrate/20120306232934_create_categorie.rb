class CreateCategorie < ActiveRecord::Migration
  def self.up
    create_table :categorie do |t|
      t.integer :id
      t.string :categoria
      t.string :ca_sezione
      t.boolean :protetto
      t.integer :ordinamento
      t.boolean :ca_nuovilavori
      t.integer :sezioni_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categorie
  end
end
