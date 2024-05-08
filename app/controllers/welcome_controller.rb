class WelcomeController < ApplicationController
  layout "adm"
  def index
    @name = params[:nome]
  end
end
