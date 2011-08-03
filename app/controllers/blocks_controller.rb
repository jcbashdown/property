class BlocksController < ApplicationController
  def index
    @blocks = Block.all
    @doc_types = DocumentType.all
  end

  def show
    @block = Block.find(params[:id])
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(params[:block])
    if @block.save
      redirect_to @block, :notice => "Successfully created block."
    else
      render :action => 'new'
    end
  end

  def edit
    @block = Block.find(params[:id])
  end

  def update
    @block = Block.find(params[:id])
    if @block.update_attributes(params[:block])
      redirect_to @block, :notice  => "Successfully updated block."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @block = Block.find(params[:id])
    @block.destroy
    redirect_to blocks_url, :notice => "Successfully destroyed block."
  end
end
