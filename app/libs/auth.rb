module Auth
  def self.encode(token:)
    payload = { sid: token }
    secret = Rails.application.secrets.secret_key_base
    JwtToken.encode(payload, secret)
  end

  def self.decode(token:)
    secret = Rails.application.secrets.secret_key_base
    JwtToken.decode(token, secret, true).first
  end
end
