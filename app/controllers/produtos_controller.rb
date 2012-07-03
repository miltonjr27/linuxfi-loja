class ProdutosController < ApplicationController

  def index
    @produto = Produto.all

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

  def create
    @produto = Produto.new(params[:produto])
    if @produto.save
      flash[:success] = 'O produto foi salvo com sucesso'
      redirect_to produtos_path
    else
      flash.now[:error] = 'Ocorreram erros na hora de gravar o produto'
      render :new
    end
      
    end
end