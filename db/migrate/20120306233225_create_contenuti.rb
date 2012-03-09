class CreateContenuti < ActiveRecord::Migration
  def self.up
    create_table :contenuti do |t|
      t.integer :id
      t.integer :edizioni_id
      t.integer :categorie_id
      t.integer :sotto_categorie_id
      t.integer :ordinamento
      t.boolean :se_sommario
      t.text :riassunto
      t.string :co_categoria
      t.string :co_sottocategoria
      t.integer :scad_mese
      t.integer :scad_giorno
      t.integer :scad_anno
      t.text :titolo
      t.text :testo
      t.datetime :data_scadenza
      t.string :riferimento
      t.boolean :se_visible_web
      t.boolean :se_visible_data
      t.boolean :se_visible_newsletter
      t.boolean :se_protetto
      t.string :immagine_url
      t.text :titolo_no_format
      t.text :testo_no_format
      t.text :riassunto_no_format

      t.timestamps
    end
  end

  def self.down
    drop_table :contenuti
  end
end
