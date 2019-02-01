class API::BaseController < ActionController::API
  include APIRenderingHelper
  include ActionController::Helpers

  before_action :authenticate_user!

  helper_method :current_user

  rescue_from ActiveRecord::RecordNotFound do |exception|
    logger.error "#{exception.class.name} (#{exception.message}):"
    logger.error exception.backtrace.join("\n")
    render_not_found
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    logger.error "#{exception.class.name} (#{exception.message}):"
    logger.error exception.backtrace.join("\n")
    render_unprocessable_entity
  end

  private

  def authenticate_user!
    render_unauthorized && return if current_user.blank?
  end

  def current_session
    return Session.first
    return @_current_session if @_current_session.present?

    authorzation_token = request.env['HTTP_AUTHORIZATION']
    return if authorzation_token.blank?

    decoded_token = Auth.decode(token: authorzation_token) rescue {}
    session_token = decoded_token['sid']
    return if session_token.blank?

    @_current_session = Session.find_by(token: session_token)
  end

  def current_user
    return @_current_user if @_current_user.present?
    return if current_session.blank?

    current_session.refresh_expiration!
    @_current_user = current_session.user
  end
end
