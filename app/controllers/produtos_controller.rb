class ProdutosController < ApplicationController

  def index
    @produtos = Produto.all

    respond_to do |format|
      format.html
      format.json { render :json => @produtos }
      format.xml { render :xml => @produtos }
    end
  end

  def show 
    @produto = Produto.find(params[:id])
  end

  def new
    @produto = Produto.new
  end
  
end