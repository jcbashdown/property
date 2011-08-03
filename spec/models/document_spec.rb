require File.dirname(__FILE__) + '/../spec_helper'

describe Document do
  it "should be valid" do
    block = Block.new(:name=>"test", :postcode=>"test", :build_date=>DateTime.now)
    block.save
    document_type = DocumentType.new(:allow_expiry=>true, :name=>"test_type", :extension=>".doc")
    document_type.valid_from="2000/01/01".to_datetime
    document_type.save
    Document.new(:expiry_date=>DateTime.now+1.days, :block_id=>block.id, :document_type_id=>document_type.id).should be_valid
  end
end
