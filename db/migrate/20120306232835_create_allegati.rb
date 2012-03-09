class CreateAllegati < ActiveRecord::Migration
  def self.up
    create_table :allegati do |t|
      t.integer :id
      t.integer :contenuti_id
      t.text :descrizione
      t.string :url
      t.boolean :se_protetto

      t.timestamps
    end
  end

  def self.down
    drop_table :allegati
  end
end
