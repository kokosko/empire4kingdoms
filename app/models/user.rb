class User < ActiveRecord::Base

  belongs_to :server

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.email = auth.info.email
      user.link = 'fb.com/' << auth.extra.raw_info.id
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    end
  end

  scope :visibility, -> (visibility) { where('show_link = ?', visibility) }

  scope :server, -> (server) { where('server_id = ?', server) }
end
