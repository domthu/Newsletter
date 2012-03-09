class CreateSottoCategorie < ActiveRecord::Migration
  def self.up
    create_table :sotto_categorie do |t|
      t.integer :categorie_id
      t.integer :id
      t.string :ca_categoria
      t.string :sottocategoria
      t.boolean :protetto
      t.integer :ordinamento
      t.datetime :data_scadenza

      t.timestamps
    end
  end

  def self.down
    drop_table :sotto_categorie
  end
end
