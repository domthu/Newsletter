class CreateGruppiUtenti < ActiveRecord::Migration
  def self.up
    create_table :gruppi_utenti do |t|
      t.integer :id
      t.integer :cu_categoriautente
      t.string :ragione_sociale
      t.string :indirizzo
      t.string :email
      t.string :presidente
      t.string :referente
      t.string :consulente
      t.string :logo
      t.string :telefono
      t.string :telefono_alt
      t.string :fax
      t.text :comunicazioni
      t.string :email_alt

      t.timestamps
    end
  end

  def self.down
    drop_table :gruppi_utenti
  end
end
