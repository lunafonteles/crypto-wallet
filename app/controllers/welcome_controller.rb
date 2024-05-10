class WelcomeController < ApplicationController
  # layout "adm"
  def index
    #cookies[:curso] = "Curso Ruby on Rails"
    #sessions[:curso] = "Curso Ruby on Rails"

    @my_name = params[:nome]
  end

end
