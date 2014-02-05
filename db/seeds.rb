# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(first_name: 'Mary', last_name: "Smith", email: 'mary@somemail.com')
# User.create(first_name: 'Max', last_name: "Smith", email: 'max@somemail.com')
# User.create(first_name: 'Rodger', last_name: "Smith", email: 'rodger@somemail.com')
# User.create(first_name: 'Janet', last_name: "Smith", email: 'janet@somemail.com')
# User.create(first_name: 'Jacob', last_name: "Smith", email: 'jacob@somemail.com')


Giftee.create(first_name: 'John', last_name: "Smith", birthday: '2005/04/25', relation: 'cousin', user_id: '1')
Giftee.create(first_name: 'Mark', last_name: "Smith", birthday: '2007/04/25', relation: 'cousin', user_id: '2')
Giftee.create(first_name: 'Larry', last_name: "Smith", birthday: '2008/04/25', relation: 'cousin', user_id: '2')
Giftee.create(first_name: 'Leslie', last_name: "Smith", birthday: '2010/04/25', relation: 'cousin', user_id: '3')
Giftee.create(first_name: 'Apple', last_name: "Smith", birthday: '2006/04/25', relation: 'cousin', user_id: '4')
Giftee.create(first_name: 'Fiona', last_name: "Smith", birthday: '2003/04/25', relation: 'cousin', user_id: '5')
Giftee.create(first_name: 'North', last_name: "Smith", birthday: '2002/04/25', relation: 'cousin', user_id: '5') 