require File.dirname(__FILE__) + '/../spec_helper'

describe Block do
  it "should be valid" do
    Block.new(:name=>"test", :postcode=>"test", :build_date=>DateTime.now).should be_valid
  end

  it "should return all the document types it has in a id referenced hash" do
    block = Block.new(:name=>"test", :postcode=>"test", :build_date=>DateTime.now)
    block.save!
    document_type = DocumentType.new(:name=>"test_type", :extension=>".doc", :allow_expiry=>true)
    document_type.valid_from="2000/01/01".to_datetime
    document_type.save!
    document = Document.new(:expiry_date=>DateTime.now+1.days, :block_id=>block.id, :document_type_id=>document_type.id)
    document.save!
    block.document_types.class.should == Hash
    block.document_types.length.should == 1
    block.document_types[document_type.id].name.should == "test_type"
  end
end
