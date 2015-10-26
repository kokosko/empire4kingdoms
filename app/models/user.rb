class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth['uid']
      user.name = auth['info']['name']
      user.image = auth['info']['image']
      user.email = auth['info']['email']
      user.link = auth['info']['urls']['facebook']
      user.oauth_token = auth['credentials']['token']
      user.oauth_expires_at = auth['credentials']['expires_at']
    end
  end
end
