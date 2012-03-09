class CreateOrganismiTipi < ActiveRecord::Migration
  def self.up
    create_table :organismi_tipi do |t|
      t.string :tipo
      t.string :descrizione
      t.integer :priorita

      t.timestamps
    end
  end

  def self.down
    drop_table :organismi_tipi
  end
end
