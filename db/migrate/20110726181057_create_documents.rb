class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.integer :document_type_id
      t.integer :block_id
      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
