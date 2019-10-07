class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome]
  end
end
