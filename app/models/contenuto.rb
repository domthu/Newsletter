class Contenuto < ActiveRecord::Base
  self.per_page=6
  belongs_to :categoria
  #belongs_to :sezione , :through => :categorie
 end
