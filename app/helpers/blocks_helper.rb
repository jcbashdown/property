module BlocksHelper
  def fire(document)
    if document.document_type.allow_expiry and document.expiry_date<DateTime.now
      true
    else
      false
    end
  end
end
