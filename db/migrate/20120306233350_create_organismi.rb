class CreateOrganismi < ActiveRecord::Migration
  def self.up
    create_table :organismi do |t|
      t.string :organismo
      t.string :sigla
      t.boolean :se_visibile

      t.timestamps
    end
  end

  def self.down
    drop_table :organismi
  end
end
