module SessionTokenable
  extend ActiveSupport::Concern

  included do
    validates :token, presence: true, uniqueness: true

    before_validation :setup_token, on: :create
  end

  private

  def setup_token
    loop do
      candidate = SecureRandom.uuid
      unless self.class.exists?(token: candidate)
        self.token = candidate
        break
      end
    end
  end
end
