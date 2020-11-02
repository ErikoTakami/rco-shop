class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  helper_method :current_cart

  def current_cart
    @cart = Cart.find_by(id: session[:cart_id])
    if @cart == nil
      @cart = Cart.create(user_id: current_user.id)
      session[:cart_id] = @cart.id
      @cart = Cart.find_by(id: session[:cart_id])
      @cart
    else
      session[:cart_id] = @cart.id
      @cart
    end
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['RCO_AUTH_USER'] && password == ENV['RCO_AUTH_PASSWORD']
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :admin])
  end
end
