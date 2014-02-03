# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Mary', last_name: "Smith", email: 'mary@somemail.com')
User.create(first_name: 'Max', last_name: "Smith", email: 'max@somemail.com')
User.create(first_name: 'Rodger', last_name: "Smith", email: 'rodger@somemail.com')
User.create(first_name: 'Janet', last_name: "Smith", email: 'janet@somemail.com')
User.create(first_name: 'Jacob', last_name: "Smith", email: 'jacob@somemail.com')


Giftee.create(first_name: 'John', last_name: "Smith", birthday: '04/25/2005', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'Mark', last_name: "Smith", birthday: '04/25/2007', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'Larry', last_name: "Smith", birthday: '04/25/2003', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'Laura', last_name: "Smith", birthday: '04/25/2009', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'Leslie', last_name: "Smith", birthday: '04/25/2009', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'Apple', last_name: "Smith", birthday: '04/25/2003', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'Fiona', last_name: "Smith", birthday: '04/25/2010', relation: 'cousin', user_id: users.sample.id)
Giftee.create(first_name: 'North', last_name: "Smith", birthday: '04/25/2005', relation: 'cousin', user_id: users.sample.id) 