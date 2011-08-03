class Document < ActiveRecord::Base
  belongs_to :document_type
  belongs_to :block
  has_attached_file :doc
  attr_accessible :document_type_id, :block_id, :expiry_date, :doc_file_name, :doc_content_type, :doc_file_size, :doc_updated_at, :doc

  validates :block_id, :presence=>true
  validates :document_type_id, :presence=>true
  validates :doc_file_name, :presence=>true

#TODO - custom validation

end
