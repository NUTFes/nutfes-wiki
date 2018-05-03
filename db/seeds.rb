# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = {
  :email=>"nutfes.shikobu@gmail.com" ,
  :password=>"gidaifes" ,
}

if User.where(:email => users[:email]).empty?
  user = User.new(users)
  user.save(:validate=>false)
end
  
