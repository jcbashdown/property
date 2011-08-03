class Block < ActiveRecord::Base
  has_many :documents
  attr_accessible :name, :postcode, :build_date
  validates :name, :presence=>true
  validates :postcode, :presence=>true
  validates :build_date, :presence=>true

  def document_types
    types = Hash.new
    documents.each do |d|
      types[d.document_type.id]=d.document_type
    end
    types
  end
end
