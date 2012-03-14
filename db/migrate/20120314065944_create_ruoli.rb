class CreateRuoli < ActiveRecord::Migration
  def self.up
    create_table :ruoli do |t|
      t.string :nome
      t.text :descrizione

      t.timestamps
    end
  end

  def self.down
    drop_table :ruoli
  end
end
