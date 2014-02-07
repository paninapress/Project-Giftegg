desc "Updating birth dates from birthday"
task :update_birth_date_fields => :environment do
  puts "Updating birth dates from birthday"
  
  Giftee.where('birthday is not null').each do |g|
    g.birth_month = g.birthday.month
    g.birth_day = g.birthday.day
    g.save
  end

  puts "Finished updating birth dates from birthday"
end