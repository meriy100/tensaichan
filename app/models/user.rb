# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  image               :string(255)
#  email               :string(255)
#  admin_flag          :boolean          default(FALSE)
#  last_login_provider :string(255)
#  last_login_at       :datetime
#  user_agent          :text(65535)
#  deleted_at          :datetime
#  created_at          :datetime
#  updated_at          :datetime
#

class User < ActiveRecord::Base

  acts_as_paranoid

  has_many :authentications
  has_one :user_profile
  accepts_nested_attributes_for :user_profile
  after_create :create_user_profile

  private

  def create_user_profile
    build_user_profile.save
  end

  # ユーザ作成
  def self.create_with_auth(authentication, request)
    # ユーザ作成
    user = User.new
    user.name                = (authentication.nickname.presence || authentication.name)
    user.image               = authentication.image    if authentication.image.present?
    user.email               = authentication.email    if authentication.email.present?
    user.last_login_provider = authentication.provider if authentication.provider.present?
    user.last_login_at       = Time.now
    user.user_agent          = request.env['HTTP_USER_AGENT'] rescue 'error'

    # データ保存
    user.save!

    # auth紐付け
    authentication.user_id = user.id
    authentication.save!

    return user
  end
end
