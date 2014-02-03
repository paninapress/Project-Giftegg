# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Mary', email: 'mary@somemail.com')
User.create(name: 'Max', email: 'max@somemail.com')
User.create(name: 'Rodger', email: 'rodger@somemail.com')
User.create(name: 'Janet', email: 'janet@somemail.com')
User.create(name: 'Jacob', email: 'jacob@somemail.com')


Giftee.create(name: 'John', birthday: '04/25/2005', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'Mark', birthday: '04/25/2007', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'Larry', birthday: '04/25/2003', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'Laura', birthday: '04/25/2009', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'Leslie', birthday: '04/25/2009', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'Apple', birthday: '04/25/2003', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'Fiona', birthday: '04/25/2010', relation: 'cousin', user_id: users.sample.id)
Giftee.create(name: 'North', birthday: '04/25/2005', relation: 'cousin', user_id: users.sample.id) 