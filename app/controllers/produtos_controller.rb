class ProdutosController < ApplicationController

  def index
    @produto = Produto.all
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
      redirect_to produtos_path
    else
      render :new
    end
      
    end
end