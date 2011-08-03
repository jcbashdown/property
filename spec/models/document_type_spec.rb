require File.dirname(__FILE__) + '/../spec_helper'

describe DocumentType do
  it "should be valid" do
    document_type = DocumentType.new(:allow_expiry=>true, :name=>"test_type", :extension=>".doc")
    document_type.valid_from="2000/01/01".to_datetime
    document_type.should be_valid
  end
end
