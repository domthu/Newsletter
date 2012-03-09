# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120306233612) do

  create_table "allegati", :force => true do |t|
    t.integer  "contenuti_id"
    t.text     "descrizione"
    t.string   "url"
    t.boolean  "se_protetto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorie", :force => true do |t|
    t.string   "categoria"
    t.string   "ca_sezione"
    t.boolean  "protetto"
    t.integer  "ordinamento"
    t.boolean  "ca_nuovilavori"
    t.integer  "sezioni_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contenuti", :force => true do |t|
    t.integer  "edizioni_id"
    t.integer  "categorie_id"
    t.integer  "sotto_categorie_id"
    t.integer  "ordinamento"
    t.boolean  "se_sommario"
    t.text     "riassunto"
    t.string   "co_categoria"
    t.string   "co_sottocategoria"
    t.integer  "scad_mese"
    t.integer  "scad_giorno"
    t.integer  "scad_anno"
    t.text     "titolo"
    t.text     "testo"
    t.datetime "data_scadenza"
    t.string   "riferimento"
    t.boolean  "se_visible_web"
    t.boolean  "se_visible_data"
    t.boolean  "se_visible_newsletter"
    t.boolean  "se_protetto"
    t.string   "immagine_url"
    t.text     "titolo_no_format"
    t.text     "testo_no_format"
    t.text     "riassunto_no_format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edizioni", :force => true do |t|
    t.string   "titolo"
    t.datetime "data_dal"
    t.datetime "data_al"
    t.string   "search_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gruppi_banners", :force => true do |t|
    t.string   "espositore"
    t.string   "url"
    t.integer  "priorita"
    t.string   "posizione"
    t.boolean  "se_visibile"
    t.string   "banner"
    t.integer  "impressions"
    t.integer  "clicks"
    t.text     "didascalia"
    t.boolean  "se_prima_pagina"
    t.integer  "impressions_history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gruppi_utenti", :force => true do |t|
    t.integer  "cu_categoriautente"
    t.string   "ragione_sociale"
    t.string   "indirizzo"
    t.string   "email"
    t.string   "presidente"
    t.string   "referente"
    t.string   "consulente"
    t.string   "logo"
    t.string   "telefono"
    t.string   "telefono_alt"
    t.string   "fax"
    t.text     "comunicazioni"
    t.string   "email_alt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gruppi_utenti_banners", :force => true do |t|
    t.integer  "gruppi_utenti_id"
    t.integer  "banners_id"
    t.boolean  "se_visibile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organismi", :force => true do |t|
    t.string   "organismo"
    t.string   "sigla"
    t.boolean  "se_visibile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organismi_associati", :force => true do |t|
    t.string   "codice"
    t.string   "organismo"
    t.string   "siglaorganismo"
    t.float    "regione"
    t.integer  "provincia"
    t.datetime "datascadenza"
    t.integer  "parentorganismo"
    t.string   "testo1"
    t.string   "testo2"
    t.string   "testo3"
    t.text     "numero1"
    t.text     "numero2"
    t.text     "numero3"
    t.datetime "data1"
    t.datetime "data2"
    t.datetime "data3"
    t.boolean  "flag1"
    t.boolean  "flag2"
    t.boolean  "flag3"
    t.boolean  "richiedinumeroregistrazione"
    t.integer  "gruppi_utenti_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organismi_tipi", :force => true do |t|
    t.string   "tipo"
    t.string   "descrizione"
    t.integer  "priorita"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "province", :force => true do |t|
    t.string   "sigla"
    t.string   "provincia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regioni", :force => true do |t|
    t.float    "idregione"
    t.string   "regione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regioni_province", :force => true do |t|
    t.integer  "idregione"
    t.integer  "idprovincia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sezioni", :force => true do |t|
    t.string   "sezione"
    t.integer  "ordinamento"
    t.boolean  "se_visibile"
    t.string   "immagine"
    t.string   "style"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sotto_categorie", :force => true do |t|
    t.integer  "categorie_id"
    t.string   "ca_categoria"
    t.string   "sottocategoria"
    t.boolean  "protetto"
    t.integer  "ordinamento"
    t.datetime "data_scadenza"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spighe", :force => true do |t|
    t.integer  "utenti_id"
    t.integer  "contenuti_id"
    t.string   "tipo"
    t.integer  "numero_spighe"
    t.datetime "data_inserimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utenti", :force => true do |t|
    t.string   "codice"
    t.string   "iva"
    t.string   "nome"
    t.string   "titolo"
    t.string   "soc"
    t.string   "organismo"
    t.string   "siglaorganismo"
    t.string   "affiliata"
    t.string   "sede"
    t.string   "indirizzo"
    t.string   "telefono"
    t.string   "fax"
    t.string   "mail"
    t.string   "login"
    t.string   "pwd"
    t.string   "registrato"
    t.string   "data"
    t.datetime "datascadenza"
    t.string   "cap"
    t.string   "prov"
    t.text     "note"
    t.string   "pagato"
    t.datetime "datapag"
    t.text     "notepag"
    t.string   "n_fatt"
    t.string   "sez"
    t.string   "numero_pi_o_cf"
    t.string   "campounauto"
    t.string   "tariffa"
    t.string   "sc"
    t.string   "imp"
    t.string   "iva_"
    t.string   "totale_fattura"
    t.string   "pagamento"
    t.text     "comunicazioni"
    t.string   "codicefiscale"
    t.string   "partitaiva"
    t.integer  "idutenteprincipale"
    t.text     "annotazioni"
    t.float    "tariffaprecedente"
    t.text     "scontoprecedente"
    t.text     "ivaprecedente"
    t.string   "pagamentoprecedente"
    t.datetime "dataultimopagamento"
    t.datetime "dataaccredito"
    t.integer  "annocompetenza"
    t.boolean  "confermaregistrazione"
    t.boolean  "abbonato"
    t.boolean  "disabilitato"
    t.string   "codicesconto"
    t.string   "mailsecondaria"
    t.integer  "parent"
    t.integer  "crediti"
    t.string   "testo1"
    t.string   "testo2"
    t.string   "testo3"
    t.text     "numero1"
    t.text     "numero2"
    t.text     "numero3"
    t.datetime "data1"
    t.datetime "data2"
    t.datetime "data3"
    t.boolean  "flag1"
    t.boolean  "flag2"
    t.boolean  "flag3"
    t.boolean  "poweruser"
    t.string   "numeroregistrazioneconi"
    t.boolean  "forum_redattore"
    t.boolean  "forum_notifica"
    t.integer  "gruppi_utenti_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
