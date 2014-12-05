Configuration
-------------

Crée un fichier oauth_key.rb avec des clés valides

    TweetStream.configure do |config|
      config.consumer_key = 'XXXXX'
      config.consumer_secret    = 'XXXXX'
      config.oauth_token        = 'XXXXX'
      config.oauth_token_secret = 'XXXXX'
      config.auth_method        = :oauth
    end

