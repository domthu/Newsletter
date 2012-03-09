class CreateProvince < ActiveRecord::Migration
  def self.up
    create_table :province do |t|
      t.integer :id
      t.string :sigla
      t.string :provincia

      t.timestamps
    end
  end

  def self.down
    drop_table :province
  end
end
