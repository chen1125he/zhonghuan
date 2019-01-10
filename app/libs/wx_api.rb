module WxAPI
  def self.api_session
    @api_session ||= WxAPI::API::Session.new
  end
end
