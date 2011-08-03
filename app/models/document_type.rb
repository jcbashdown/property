class DocumentType < ActiveRecord::Base
  has_many :documents
  attr_accessible :name, :extension, :allow_expiry, :valid_from

  validates :name, :presence=>true, :uniqueness => true
  validates :extension, :presence=>true
  validates :valid_from, :presence=>true
end
