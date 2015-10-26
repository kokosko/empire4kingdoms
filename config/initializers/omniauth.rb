OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, Rails.application.secrets['APP_ID'], Rails.application.secrets['APP_SECRET'], { scope: 'user_about_me' }
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET']
end
