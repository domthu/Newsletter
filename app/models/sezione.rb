class Sezione < ActiveRecord::Base
has_many :categorie

named_scope :for_categorie_ids, lambda {|ids| {:conditions => {:categoria_id => ids}}}
end
