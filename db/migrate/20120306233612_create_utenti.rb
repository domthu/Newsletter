class CreateUtenti < ActiveRecord::Migration
  def self.up
    create_table :utenti do |t|
      t.integer :id
      t.string :codice
      t.string :iva
      t.string :nome
      t.string :titolo
      t.string :soc
      t.string :organismo
      t.string :siglaorganismo
      t.string :affiliata
      t.string :sede
      t.string :indirizzo
      t.string :telefono
      t.string :fax
      t.string :mail
      t.string :login
      t.string :pwd
      t.string :registrato
      t.string :data
      t.datetime :datascadenza
      t.string :cap
      t.string :prov
      t.text :note
      t.string :pagato
      t.datetime :datapag
      t.text :notepag
      t.string :n_fatt
      t.string :sez
      t.string :numero_pi_o_cf
      t.string :campounauto
      t.string :tariffa
      t.string :sc
      t.string :imp
      t.string :iva_
      t.string :totale_fattura
      t.string :pagamento
      t.text :comunicazioni
      t.string :codicefiscale
      t.string :partitaiva
      t.integer :idutenteprincipale
      t.text :annotazioni
      t.float :tariffaprecedente
      t.text :scontoprecedente
      t.text :ivaprecedente
      t.string :pagamentoprecedente
      t.datetime :dataultimopagamento
      t.datetime :dataaccredito
      t.integer :annocompetenza
      t.boolean :confermaregistrazione
      t.boolean :abbonato
      t.boolean :disabilitato
      t.string :codicesconto
      t.string :mailsecondaria
      t.integer :parent
      t.integer :crediti
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
      t.boolean :poweruser
      t.string :numeroregistrazioneconi
      t.boolean :forum_redattore
      t.boolean :forum_notifica
      t.integer :gruppi_utenti_id

      t.timestamps
    end
  end

  def self.down
    drop_table :utenti
  end
end
