class CreateOrganismiAssociati < ActiveRecord::Migration
  def self.up
    create_table :organismi_associati do |t|
      t.integer :id
      t.string :codice
      t.string :organismo
      t.string :siglaorganismo
      t.float :regione
      t.integer :provincia
      t.datetime :datascadenza
      t.integer :parentorganismo
      t.string :testo1
      t.string :testo2
      t.string :testo3
      t.text :numero1
      t.text :numero2
      t.text :numero3
      t.datetime :data1
      t.datetime :data2
      t.datetime :data3
      t.boolean :flag1
      t.boolean :flag2
      t.boolean :flag3
      t.boolean :richiedinumeroregistrazione
      t.integer :gruppi_utenti_id

      t.timestamps
    end
  end

  def self.down
    drop_table :organismi_associati
  end
end
