class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  private

  def current_usuario
    @current_usuario ||= if session[:usuario_id]
      Usuario.find_by_id(session[:usuario_id])
  end
  end
  helper_method :current_usuario

  protect_from_forgery with: :exception
  include SessionsHelper
end
