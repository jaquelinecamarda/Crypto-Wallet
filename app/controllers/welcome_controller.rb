class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby Jaqueline Camarda"
    session[:curso] = "Curso de Ruby Jaqueline Camarda"
    @meu_nome = params[:nome]
  end
end
