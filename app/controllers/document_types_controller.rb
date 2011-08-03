class DocumentTypesController < ApplicationController

  def new
    @document_type = DocumentType.new
  end

  def create
    @document_type = DocumentType.new(params[:document_type])
    time = params[:document_type][:valid_from]
    p time
    if @document_type.save
      redirect_to blocks_url, :notice => "Successfully created document type."
    else
      render :action => 'new'
    end
  end

  def destroy
    @document_type = DocumentType.find(params[:id])
    @document_type.destroy
    redirect_to blocks_url, :notice => "Successfully destroyed document type."
  end
end
