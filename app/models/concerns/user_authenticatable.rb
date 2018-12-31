module UserAuthenticatable
  Error = Class.new(StandardError)

  extend ActiveSupport::Concern

  included do
    alias_attribute :openid, :uid

    validates :uid, presence: true, uniqueness: true

    before_validation :setup_name, if: -> { raw_changed? }
  end

  class_methods do
    def developer_authorization
      { 'uid' => 'o2AX30BKKK-zN8SYd2fOH8de1SNU', 'raw' => {} }
    end

    def find_or_create_by_authorization!(authorization)
      begin
        transaction do
          user = find_or_create_by!(uid: authorization.fetch('uid'))
          find_or_create_by_authorization__update_user!(user, authorization)
        end
      rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotUnique
        user = find_by!(uid: authorization.fetch('uid'))
        find_or_create_by_authorization__update_user!(user, authorization)
      end
    end

    def find_or_create_by_authorization__update_user!(user, authorization)
      current_user_raw = user.raw.presence || {}
      user.update!(raw: current_user_raw.merge(authorization.fetch('raw')))
      user
    end
  end

  def raw_user_logged_in?
    raw.present?
  end

  def raw_avatar_url
    raw['avatarUrl'].presence
  end

  def raw_nickname
    raw['nickName'].presence || '未登录的用户'
  end

  def raw_gender
    case raw['gender']
    when 0 then '女'
    when 1 then '男'
    else '未知'
    end
  end

  private

  def setup_name
    self.name = raw['nickName'] if respond_to?(:name) && raw['nickName'].present?
  end
end
