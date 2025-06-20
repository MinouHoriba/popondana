class User < ApplicationRecord
  validates :uid, :email, uniqueness: true
  validates :email, format: { with: /@sonicgarden\.jp\z/ }

  def self.from_omniauth(auth)
    where(uid: auth.uid).first_or_initialize.tap do |user|
      user.name = auth.info.name
      user.email = auth.info.email
      user.icon_url = auth.info.image
    end
  end
end
