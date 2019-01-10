module SessionExpirable
  extend ActiveSupport::Concern

  EXPIRES_IN = 7.days

  included do
    validates :expires_at, presence: true

    before_validation :setup_expires_at, on: :create

    scope :expired, -> { where('? > expires_at', Time.current) }
    scope :unexpired, -> { where('expires_at > ?', Time.current) }
  end

  def refresh_expiration!
    update!(expires_at: EXPIRES_IN.from_now)
  end

  def expired?
    Time.current > expires_at
  end

  private

  def setup_expires_at
    self.expires_at = EXPIRES_IN.from_now
  end
end
