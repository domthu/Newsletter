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

ActiveRecord::Schema.define(:version => 20120314070035) do

  create_table "Allegati", :primary_key => "AL_IDAllegato", :force => true do |t|
    t.integer "AL_IDContenuto",                       :default => 0
    t.text    "AL_Descrizione", :limit => 2147483647
    t.string  "AL_URL"
    t.binary  "AL_Protetto",    :limit => 1
  end

  add_index "Allegati", ["AL_IDAllegato"], :name => "IDAllegato"
  add_index "Allegati", ["AL_IDContenuto"], :name => "ContenutiAllegati"

  create_table "AmiciSegnalati", :primary_key => "Email", :force => true do |t|
    t.string "Nome", :limit => 50
  end

  create_table "Banner", :primary_key => "BA_IDBanner", :force => true do |t|
    t.string  "BA_Espositore",        :limit => 50
    t.string  "BA_URL"
    t.integer "BA_Priorita",                                :default => 0
    t.string  "BA_Posizione",         :limit => 50
    t.binary  "BA_Visibile",          :limit => 1
    t.string  "BA_Banner"
    t.integer "BA_Impressions",                             :default => 0
    t.integer "BA_Clicks",                                  :default => 0
    t.text    "BA_Didascalia",        :limit => 2147483647
    t.binary  "BA_PrimaPagina",       :limit => 1
    t.integer "BA_ImpressionHistory",                       :default => 0
  end

  create_table "CategoriaUtente", :primary_key => "CU_CategoriaUtente", :force => true do |t|
    t.string "CU_RagioneSociale"
    t.string "CU_Indirizzo",      :limit => 50
    t.string "CU_Email",          :limit => 50
    t.string "CU_Presidente",     :limit => 50
    t.string "CU_Referente",      :limit => 50
    t.string "CU_Consulente",     :limit => 50
    t.string "CU_Logo",           :limit => 50
    t.string "CU_Telefono",       :limit => 50
    t.string "CU_Fax",            :limit => 50
    t.text   "CU_Comunicazioni",  :limit => 2147483647
    t.string "CU_Email2",         :limit => 50
  end

  add_index "CategoriaUtente", ["CU_CategoriaUtente"], :name => "IDProvincia"

  create_table "CategoriaUtenteBanner", :id => false, :force => true do |t|
    t.integer "CB_CategoriaUtente",              :default => 0,      :null => false
    t.integer "CB_Banner",                       :default => 0,      :null => false
    t.binary  "CB_Visibile",        :limit => 1, :default => "b'1'"
  end

  add_index "CategoriaUtenteBanner", ["CB_Banner"], :name => "BannerCategoriaUtenteBanner"
  add_index "CategoriaUtenteBanner", ["CB_CategoriaUtente"], :name => "CategoriaUtenteCategoriaUtenteBanner"

  create_table "Categorie", :primary_key => "CA_Categoria", :force => true do |t|
    t.string  "CA_Sezione",     :limit => 50
    t.binary  "CA_Protetto",    :limit => 1
    t.integer "CA_Ordinamento",               :default => 0
    t.binary  "CA_NuoviLavori", :limit => 1,  :default => "b'0'"
  end

  add_index "Categorie", ["CA_Sezione"], :name => "SezioniCategorie"

  create_table "Contenuti", :primary_key => "CO_IDContenuto", :force => true do |t|
    t.integer "CO_Progressivo",                          :default => 0
    t.binary  "CO_Sommario",       :limit => 1
    t.text    "CO_Sunto",          :limit => 2147483647
    t.string  "CO_Categoria",      :limit => 50
    t.string  "CO_Sottocategoria", :limit => 50
    t.integer "CO_Mese",                                 :default => 0
    t.integer "CO_Giorno",                               :default => 0
    t.integer "CO_Anno",                                 :default => 0
    t.text    "CO_Titolo",         :limit => 2147483647
    t.text    "CO_Testo",          :limit => 2147483647
    t.integer "CO_IDEdizione",                           :default => 0
    t.string  "Co_Citta"
    t.string  "CO_Indirizzo"
    t.string  "CO_URL"
    t.binary  "CO_VisibileWEB",    :limit => 1
    t.binary  "CO_VisibileData",   :limit => 1
    t.binary  "CO_VisibileMAIL",   :limit => 1
    t.binary  "CO_Protetto",       :limit => 1
    t.string  "CO_Immagine"
    t.text    "CO_TitoloStripped", :limit => 2147483647
    t.text    "CO_TestoStripped",  :limit => 2147483647
    t.text    "CO_SuntoStripped",  :limit => 2147483647
  end

  add_index "Contenuti", ["CO_Categoria"], :name => "CategorieContenuti"
  add_index "Contenuti", ["CO_IDContenuto"], :name => "IDContenuto"
  add_index "Contenuti", ["CO_IDEdizione"], :name => "EdizioniContenuti"
  add_index "Contenuti", ["CO_Sottocategoria"], :name => "SottoCategorieContenuti"

  create_table "Edizioni", :primary_key => "ED_IDEdizione", :force => true do |t|
    t.string   "ED_Titolo", :limit => 50
    t.datetime "ED_Dal"
    t.datetime "ED_Al"
    t.string   "ED_Keys"
  end

  add_index "Edizioni", ["ED_IDEdizione"], :name => "IDEdizione"

  create_table "Organismi", :id => false, :force => true do |t|
    t.string "Organismo",      :limit => 50,                     :null => false
    t.string "SiglaOrganismo", :limit => 50,                     :null => false
    t.binary "Visibile",       :limit => 1,  :default => "b'1'"
  end

  create_table "OrganismiAssociati", :primary_key => "Codice", :force => true do |t|
    t.string   "Organismo",                   :limit => 50
    t.string   "SiglaOrganismo",              :limit => 50
    t.float    "Regione"
    t.integer  "Provincia"
    t.datetime "DataScadenza"
    t.integer  "ParentOrganismo",                            :default => 0
    t.string   "Testo1",                      :limit => 100
    t.string   "Testo2",                      :limit => 100
    t.string   "Testo3",                      :limit => 100
    t.float    "Numero1",                                    :default => 0.0
    t.float    "Numero2",                                    :default => 0.0
    t.float    "Numero3",                                    :default => 0.0
    t.datetime "Data1"
    t.datetime "Data2"
    t.datetime "Data3"
    t.binary   "Flag1",                       :limit => 1
    t.binary   "Flag2",                       :limit => 1
    t.binary   "Flag3",                       :limit => 1
    t.binary   "RichiediNumeroRegistrazione", :limit => 1
  end

  add_index "OrganismiAssociati", ["Codice"], :name => "Codice", :unique => true
  add_index "OrganismiAssociati", ["Numero1"], :name => "Numerico1"
  add_index "OrganismiAssociati", ["Numero2"], :name => "Numero2"
  add_index "OrganismiAssociati", ["Numero3"], :name => "Numero3"

  create_table "Province", :primary_key => "ID", :force => true do |t|
    t.string "Sigla",     :limit => 2
    t.string "Provincia", :limit => 50
  end

  create_table "RegioneProvincia", :id => false, :force => true do |t|
    t.integer "IDRegione",   :default => 0
    t.integer "IDProvincia", :default => 0
  end

  add_index "RegioneProvincia", ["IDProvincia"], :name => "IDProvincia"
  add_index "RegioneProvincia", ["IDRegione"], :name => "IDRegione"

  create_table "Regioni", :primary_key => "IDRegione", :force => true do |t|
    t.string "Regione"
  end

  create_table "Sessioni", :id => false, :force => true do |t|
    t.integer "SE_IDUtente",  :default => 0
    t.string  "SE_IPAddress"
    t.string  "SE_SessionID"
  end

  add_index "Sessioni", ["SE_IDUtente"], :name => "UtentiSessioni"
  add_index "Sessioni", ["SE_SessionID"], :name => "SE_SessionID"

  create_table "Sezioni", :primary_key => "CA_Sezione", :force => true do |t|
    t.integer "CA_Ordinamento",               :default => 0
    t.binary  "CA_Visibile",    :limit => 1
    t.string  "CA_Immagine",    :limit => 50
    t.string  "CA_Style",       :limit => 50
  end

  add_index "Sezioni", ["CA_Sezione"], :name => "CA_Categoria", :unique => true

  create_table "SottoCategorie", :id => false, :force => true do |t|
    t.string   "CA_Categoria",      :limit => 50,                :null => false
    t.string   "CA_SottoCategoria", :limit => 50,                :null => false
    t.binary   "CA_Protetto",       :limit => 1
    t.integer  "CA_Ordinamento",                  :default => 0
    t.datetime "CA_DataScadenza"
  end

  add_index "SottoCategorie", ["CA_Categoria"], :name => "CategorieSottoCategorie"
  add_index "SottoCategorie", ["CA_SottoCategoria"], :name => "CA_Categoria", :unique => true

  create_table "Spighe", :primary_key => "SP_IDSpiga", :force => true do |t|
    t.integer  "SP_IDUtente",                      :default => 0
    t.integer  "SP_IDContenuto",                   :default => 0
    t.string   "SP_Tipo",            :limit => 50
    t.integer  "SP_NumeroSpighe",    :limit => 2,  :default => 0
    t.datetime "SP_DataInserimento"
  end

  add_index "Spighe", ["SP_IDContenuto"], :name => "ContenutiSpighe"
  add_index "Spighe", ["SP_IDUtente"], :name => "IDUTENTE"
  add_index "Spighe", ["SP_IDUtente"], :name => "UtentiSpighe"

  create_table "TipiOrganismo", :id => false, :force => true do |t|
    t.string  "TipoOrganismo",        :limit => 50
    t.string  "DescrizioneOrganismo", :limit => 50
    t.integer "Priorita"
  end

  create_table "Utenti", :primary_key => "ID", :force => true do |t|
    t.string   "Codice",                  :limit => 50
    t.string   "IVA",                     :limit => 16
    t.string   "Nome"
    t.string   "Titolo"
    t.string   "Soc"
    t.string   "Organismo",               :limit => 50
    t.string   "SiglaOrganismo",          :limit => 50
    t.string   "Affiliata"
    t.string   "Sede"
    t.string   "Indirizzo",               :limit => 50
    t.string   "Telefono"
    t.string   "Fax"
    t.string   "Mail"
    t.string   "Login"
    t.string   "Pwd",                     :limit => 8
    t.string   "Registrato",              :limit => 5
    t.string   "Data",                    :limit => 50
    t.datetime "DataScadenza"
    t.string   "Cap",                     :limit => 50
    t.string   "Prov",                    :limit => 25
    t.text     "Note",                    :limit => 2147483647
    t.string   "pagato",                  :limit => 10
    t.datetime "datapag"
    t.text     "notepag",                 :limit => 2147483647
    t.string   "N_FATT",                  :limit => 10
    t.string   "SEZ",                     :limit => 10
    t.string   "NUMERO_PI_O_CF",          :limit => 15
    t.string   "CampoUnAuto",             :limit => 50
    t.string   "TARIFFA",                 :limit => 50
    t.string   "SC",                      :limit => 50
    t.string   "IMP",                     :limit => 50
    t.string   "IVA_",                    :limit => 16
    t.string   "TOTALE_FATTURA",          :limit => 20
    t.string   "PAGAMENTO",               :limit => 50
    t.text     "COMUNICAZIONI",           :limit => 2147483647
    t.string   "CodiceFiscale",           :limit => 16
    t.string   "PartitaIva",              :limit => 11
    t.integer  "IDUtentePrincipale"
    t.text     "Annotazioni",             :limit => 2147483647
    t.decimal  "TariffaPrecedente",                             :precision => 19, :scale => 4, :default => 0.0
    t.float    "ScontoPrecedente",                                                             :default => 0.0
    t.float    "IvaPrecedente",                                                                :default => 0.0
    t.string   "PagamentoPrecedente",     :limit => 100
    t.datetime "DataUltimoPagamento"
    t.datetime "DataAccredito"
    t.integer  "AnnoCompetenza"
    t.binary   "ConfermaRegistrazione",   :limit => 1
    t.binary   "Abbonato",                :limit => 1
    t.binary   "Disabilitato",            :limit => 1
    t.string   "CodiceSconto",            :limit => 5
    t.string   "MailSecondaria"
    t.integer  "Parent",                                                                       :default => 0
    t.integer  "Crediti",                                                                      :default => 50
    t.string   "Testo1",                  :limit => 100
    t.string   "Testo2",                  :limit => 100
    t.string   "Testo3",                  :limit => 100
    t.float    "Numero1",                                                                      :default => 0.0
    t.float    "Numero2",                                                                      :default => 0.0
    t.float    "Numero3",                                                                      :default => 0.0
    t.datetime "Data1"
    t.datetime "Data2"
    t.datetime "Data3"
    t.binary   "Flag1",                   :limit => 1
    t.binary   "Flag2",                   :limit => 1
    t.binary   "Flag3",                   :limit => 1
    t.binary   "PowerUser",               :limit => 1
    t.string   "numeroregistrazioneconi", :limit => 15,                                        :default => "0"
    t.binary   "FORUM_REDATTORE",         :limit => 1
    t.binary   "FORUM_NOTIFICA",          :limit => 1
  end

  add_index "Utenti", ["Codice"], :name => "Codice"
  add_index "Utenti", ["CodiceFiscale"], :name => "CodiceFiscale"
  add_index "Utenti", ["CodiceSconto"], :name => "CodiceSconto"
  add_index "Utenti", ["IDUtentePrincipale"], :name => "IDUtentePrincipale"
  add_index "Utenti", ["NUMERO_PI_O_CF"], :name => "NUMERO_PI_O_CF"
  add_index "Utenti", ["Numero1"], :name => "Numero1"
  add_index "Utenti", ["Numero2"], :name => "Numero2"
  add_index "Utenti", ["Numero3"], :name => "Numero3"
  add_index "Utenti", ["numeroregistrazioneconi"], :name => "NumeroRegistrazioneConi"

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

  create_table "ruoli", :force => true do |t|
    t.string   "nome"
    t.text     "descrizione"
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

  create_table "user", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.string   "username",                                              :null => false
    t.integer  "ruoli_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user", ["authentication_token"], :name => "index_user_on_authentication_token", :unique => true
  add_index "user", ["confirmation_token"], :name => "index_user_on_confirmation_token", :unique => true
  add_index "user", ["email"], :name => "index_user_on_email", :unique => true
  add_index "user", ["reset_password_token"], :name => "index_user_on_reset_password_token", :unique => true
  add_index "user", ["unlock_token"], :name => "index_user_on_unlock_token", :unique => true

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
