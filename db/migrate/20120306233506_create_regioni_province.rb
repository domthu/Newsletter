class CreateRegioniProvince < ActiveRecord::Migration
  def self.up
    create_table :regioni_province do |t|
      t.integer :idregione
      t.integer :idprovincia

      t.timestamps
    end
  end

  def self.down
    drop_table :regioni_province
  end
end
