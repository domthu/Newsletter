class CreateGruppiUtentiBanners < ActiveRecord::Migration
  def self.up
    create_table :gruppi_utenti_banners do |t|
      t.integer :gruppi_utenti_id
      t.integer :banners_id
      t.boolean :se_visibile

      t.timestamps
    end
  end

  def self.down
    drop_table :gruppi_utenti_banners
  end
end
