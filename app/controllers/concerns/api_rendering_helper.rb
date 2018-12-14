module APIRenderingHelper
  extend ActiveSupport::Concern

  def render_ok(data = nil)
    data ||= {}
    render json: data, status: :ok
  end

  def render_created(data = nil)
    data ||= {}
    render json: data, status: :created
  end

  def render_no_content
    head :no_content
  end

  def render_unauthorized(message = nil)
    message ||= '你还未登录'
    render json: { message: message }, status: :unauthorized
  end

  def render_forbidden(message = nil)
    message ||= '你无法进行该操作'
    render json: { message: message }, status: :forbidden
  end

  def render_not_found(message = nil)
    message ||= '你要操作的资源未找到'
    render json: { message: message }, status: :not_found
  end

  def render_unprocessable_entity(message = nil, record = nil)
    message ||= '验证失败'
    if record.nil?
      errors = []
    else
      errors = record.errors.map do |attribute, error|
        {
          resource: record.class.name,
          field: attribute.to_s,
          message: error
        }
      end
    end
    render json: { message: message, errors: errors }, status: :unprocessable_entity
  end
end
