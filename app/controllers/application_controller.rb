class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :cookie_check
  
  private 
  def cookie_check
      if cookies[:current_stylesheet].nil?
        cookies.permanent[:current_stylesheet] = "greyStyle"
      end
      if cookies[:current_language].nil?
        cookies.permanent[:current_language] = "en"
        I18n.locale = 'en'
      else
        I18n.locale = cookies[:current_language]
      end
  end
end
