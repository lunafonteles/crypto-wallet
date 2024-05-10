class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    if params[:locale].present?
      cookies[:locale] = params[:locale]
    end
    I18n.locale = cookies[:locale] || I18n.default_locale
  end
  
end
