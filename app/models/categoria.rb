class Categoria < ActiveRecord::Base
belongs_to :sezione

#named_scope :categories_per_sezione, lambda {|ids| {:conditions => {:sezioni_id => ids}}}


end
