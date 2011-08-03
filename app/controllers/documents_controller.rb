class DocumentsController < ApplicationController

  def new
    @block = Block.find(params[:id])
    @type = DocumentType.find(params[:doc_type_id])
    unless @block.build_date>@type.valid_from
      redirect_to blocks_url, :notice => "Cannot have an asbestos report for buildings built before 01/01/2000"
    end
    @document = Document.new
  end

  def create
    @document = Document.new(params[:document])
    @type = DocumentType.find(params[:document][:document_type_id])
    @block = Block.find(params[:document][:block_id])
    @document.expiry_date=nil unless @type.allow_expiry
    if @document.save
      redirect_to blocks_url, :notice => "Successfully created document."
    else
      render :action => "new"
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to blocks_url, :notice => "Successfully destroyed document."
  end
end
