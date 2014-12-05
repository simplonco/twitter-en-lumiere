require 'twilio-ruby' 
 
# put your own credentials here 
ACCOUNT_SID = 'AC8601446edd4300b2f0b9030d955b559c' 
AUTH_TOKEN = 'd811f30fabab6ca35f6faff149ca229f' 
 
# set up a client to talk to the Twilio REST API 

module Sms
  def Sms.send(to, message)
    @client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
    begin 
       read_file = File.new(".lib/count.txt", "r")
       value = read_file.gets
       value = value.to_i + 1
       read_file.close
    rescue
       value = 1
    end
    write_file = File.new(".lib/count.txt", "w")
    write_file.write(value)
    write_file.close

    if value < 10 

    @client.account.messages.create({from: '+15878010418', to: to, body: message})
    end
  end
end 
#@client.account.messages.create({
#	from: '+15878010418',
#        to: '+33649643182',
#        body: 'Hey! Zouhoura'
#})
