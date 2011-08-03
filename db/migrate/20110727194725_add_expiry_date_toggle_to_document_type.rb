class AddExpiryDateToggleToDocumentType < ActiveRecord::Migration
  def self.up
    add_column :document_types, :allow_expiry, :boolean
  end

  def self.down
    remove_column :document_types, :allow_expiry
  end
end
