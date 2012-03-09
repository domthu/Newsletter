class CreateSpighe < ActiveRecord::Migration
  def self.up
    create_table :spighe do |t|
      t.integer :id
      t.integer :utenti_id
      t.integer :contenuti_id
      t.string :tipo
      t.integer :numero_spighe
      t.datetime :data_inserimento

      t.timestamps
    end
  end

  def self.down
    drop_table :spighe
  end
end
