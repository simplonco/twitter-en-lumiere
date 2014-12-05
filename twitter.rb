require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key        = 'H8RF2KQA67GEb6JNYCTTIKALq'
  config.consumer_secret     = 'NtwLWUKIVqPabkYnRNRLd3QWePcgwLjMxSrftMDYHKf9QB5iW0'
  config.oauth_token         = '2692334299-bERqm7v3VfqYIrQXBJi28IPnHeoSPl492qJ81ie'
  config.oauth_token_secret  = '5XdnnWGtcM2ZhHmPtNzMEBc66nqMebhwwAenNFYUslUeT'
  config.auth_method         = :oauth
end

module Twitter 
  def self.when(words)
     TweetStream::Client.new.track(words) do |status|
       yield status.text
     end
  end
end
