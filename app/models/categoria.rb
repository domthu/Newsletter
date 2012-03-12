class Categoria < ActiveRecord::Base
belongs_to :sezione
has_many :contenuti

#named_scope :categories_per_sezione, lambda {|ids| {:conditions => {:sezioni_id => ids}}}


end
