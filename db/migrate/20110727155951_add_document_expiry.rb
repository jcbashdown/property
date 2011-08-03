class AddDocumentExpiry < ActiveRecord::Migration
  def self.up
    add_column :documents, :expiry_date, :datetime
  end

  def self.down
    remove_column :documents, :expiry_date
  end
end
