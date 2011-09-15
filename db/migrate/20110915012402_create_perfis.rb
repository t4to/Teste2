class CreatePerfis < ActiveRecord::Migration
  def self.up
    create_table :perfis do |t|
      t.integer :evento_id
      t.integer :area_id
      t.string :user
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :perfis
  end
end
