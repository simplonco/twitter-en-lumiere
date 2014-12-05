require 'tweetstream'
load 'oauth_key.rb'

module Twitter 
  def self.when(words)
     TweetStream::Client.new.track(words) do |status|
       yield status.text
     end
  end
end
