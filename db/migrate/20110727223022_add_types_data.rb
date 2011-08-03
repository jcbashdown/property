class AddTypesData < ActiveRecord::Migration
  def self.up
    DocumentType.delete_all
    types=[{:name=>"Asbestos Survey", :extension=>"all", :allow_expiry=>"0"},
      {:name=>"Fire Risk Assessment", :extension=>"all", :allow_expiry=>"1"},
      {:name=>"Management Agreement", :extension=>"all", :allow_expiry=>"0"}]
    types.each do |type|
      t = DocumentType.new
      t.attributes=type
#      god knows why but I'm having trouble defining this above so moving on
      if t.name=="Asbestos Survey"
        t.valid_from="01/01/2000".to_datetime
      else
        t.valid_from="01/01/1950".to_datetime
      end
      t.save!
    end
  end

  def self.down
    DocumentType.delete_all
  end
end
