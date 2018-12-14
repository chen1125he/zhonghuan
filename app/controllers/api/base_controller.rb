class API::BaseController < ActionController::API
  include APIRenderingHelper

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
end
