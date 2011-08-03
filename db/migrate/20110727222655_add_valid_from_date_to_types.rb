class AddValidFromDateToTypes < ActiveRecord::Migration
  def self.up
    add_column :document_types, :valid_from, :datetime
  end

  def self.down
    remove_column :document_types, :valid_from
  end
end
