# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
ActiveSupport::Inflector.inflections.clear
 ActiveSupport::Inflector.inflections do |inflect|
    #--------------------------inflessioni
  # ruolo 
  inflect.plural /^([\w]*)olo$/i, '\1oli'
  inflect.singular /^([\w]*)oli$/i, '\1olo'
  # contenuto 
  inflect.plural /^([\w]*)uto$/i, '\1uti'
  inflect.singular /^([\w]*)uti$/i, '\1uto'
  #inflect.irregular 'allegato', 'allegati'
   # allegato , segnalato
   inflect.plural /^([\w]*)ato$/i, '\1ati'
  inflect.singular /^([\w]*)ati$/i, '\1ato'

  # utente, dipendente
  inflect.plural /^([\w]*)nte$/i, '\1nti'
  inflect.singular /^([\w]*)nti$/i, '\1nte'
	#categoria
   inflect.plural /^([\w]*)ria$/i, '\1rie'
  inflect.singular /^([\w]*)rie$/i, '\1ria'
  # provincia
   inflect.plural /^([\w]*)ncia$/i, '\1nce'
  inflect.singular /^([\w]*)nce$/i, '\1ncia'
   # edizione, sezione,sessione,regione
  inflect.plural /^([\w]*)ione$/i, '\1ioni'
  inflect.singular /^([\w]*)ioni$/i, '\1ione'
  	#spiga
   inflect.plural /^([\w]*)iga$/i, '\1ighe'
  inflect.singular /^([\w]*)ighe$/i, '\1iga'
  #organismo
   inflect.plural /^([\w]*)smo$/i, '\1smi'
  inflect.singular /^([\w]*)smi$/i, '\1smo'
  #contatore
   inflect.plural /^(.*)ore$/i, '\1ori'
  inflect.singular /^(.*)ori$/i, '\1ore'
  #banner
   inflect.plural /^([\w]*)banner$/i, '\1banners'
  inflect.singular /^([\w]*)banners$/i, '\1banner'
  # Irregolarità
   #inflect.irregular 'banner', 'banner'
  #--------------------------------------------------
   end
