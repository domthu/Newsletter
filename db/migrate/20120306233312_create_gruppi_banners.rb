class CreateGruppiBanners < ActiveRecord::Migration
  def self.up
    create_table :gruppi_banners do |t|
      t.integer :id
      t.string :espositore
      t.string :url
      t.integer :priorita
      t.string :posizione
      t.boolean :se_visibile
      t.string :banner
      t.integer :impressions
      t.integer :clicks
      t.text :didascalia
      t.boolean :se_prima_pagina
      t.integer :impressions_history

      t.timestamps
    end
  end

  def self.down
    drop_table :gruppi_banners
  end
end
