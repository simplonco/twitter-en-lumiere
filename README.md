== Configuration

Crée un fichier oauth_key.rb avec des clés valides

   TweetStream.configure do |config|
     config.consumer_key        = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
     config.consumer_secret     = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
     config.oauth_token         = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
     config.oauth_token_secret  = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
     config.auth_method         = :oauth
  end
