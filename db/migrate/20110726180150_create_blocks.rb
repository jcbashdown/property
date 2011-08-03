class CreateBlocks < ActiveRecord::Migration
  def self.up
    create_table :blocks do |t|
      t.string :name
      t.string :postcode
      t.datetime :build_date
      t.timestamps
    end
  end

  def self.down
    drop_table :blocks
  end
end
