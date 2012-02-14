TWITTER_CONFIG = YAML.load_file("#{Rails.root}/config/twitter.yml")[Rails.env].symbolize_keys
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, TWITTER_CONFIG[:key], TWITTER_CONFIG[:secret] 
end
