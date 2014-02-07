desc "Texts users who have upcoming giftee birthdays"
task :text_users => :environment do
  
  check_date = Time.now + 14.days

  Giftee.where(birth_month: check_date.month, birth_day: check_date.day).each do |g|
    user = User.find_by(id: g.user_id)
    cell_num = user[:phone]
 
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(:body => "Psst! #{g.first_name} #{g.last_name} #{g.notes}",
        :to => cell_num,
        :from => ENV['TWILIO_PHONE']) 
  end
end