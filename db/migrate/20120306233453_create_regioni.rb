class CreateRegioni < ActiveRecord::Migration
  def self.up
    create_table :regioni do |t|
      t.float :idregione
      t.string :regione

      t.timestamps
    end
  end

  def self.down
    drop_table :regioni
  end
end
