# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do

  zaklad = %w(vodka rum whisky tequila ostatní)

  Drink.create( nazev:    Faker::Lorem.word,
                autor:    Faker::Name.name,
                datum:    Faker::Date.between(50.years.ago, Date.today),
                misto:    Faker::Address.city,
                zaklad:   zaklad.shuffle.first,
                text1:    Faker::Lorem.paragraph + Faker::Lorem.paragraph,
                text2:    Faker::Lorem.paragraph + Faker::Lorem.paragraph,
                img_url:  Faker::Avatar.image
                 )

end
