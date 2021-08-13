OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['340606447775153'], ENV['39c3d743d49fc7579be35ad9c6530b00'], origin_param: false
end