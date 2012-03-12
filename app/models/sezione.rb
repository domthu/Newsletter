class Sezione < ActiveRecord::Base
has_many :categorie
has_many :contenuti , :through => :categorie


    def get_categorie
        #@fs = FilterSample.all(:conditions => ['sampling_id = ?', @sampling.id ])
        Categoria.where(["sezioni_id >= ?", id.to_s])
        #Categoria.all()
    end


end
