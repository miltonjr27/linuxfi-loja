# encoding: utf-8
class SessionsController < ApplicationController

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.autenticar(
      params[:usuario][:email],
      params[:usuario][:senha]
    )

    if @usuario
      self.usuario_atual = @usuario
      flash[:success] = ts("flash.welcome")
      redirect_to root_url
    else
      flash.now[:error] = ts("flash.erro")
      render :new
    end
    
  end


  def destroy
    reset_session
    flash[:sucess] = ts("flash.logoff")
    redirect_to root_url
  end

end