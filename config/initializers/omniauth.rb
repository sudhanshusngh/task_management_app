#OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :facebook, ENV['340606447775153'], ENV['39c3d743d49fc7579be35ad9c6530b00'], origin_param: false
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end