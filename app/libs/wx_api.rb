module WxAPI
  def self.api_session
    @api_session ||= WxAPI::API::Session.new
  end

  def self.qrcode
    @qrcode ||= WxAPI::Qrcode.new
  end
end
