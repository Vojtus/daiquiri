# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do

  zaklad = %w(vodka rum whisky tequila ostatní)

  image_url = Faker::Avatar.image

  Drink.create( nazev:    Faker::Lorem.word.capitalize,
                autor:    Faker::Name.name,
                datum:    Faker::Date.between(50.years.ago, Date.today),
                misto:    Faker::Address.city,
                zaklad:   zaklad.shuffle.first,
                text1:    Faker::Lorem.paragraph + " " + Faker::Lorem.paragraph,
                text2:    Faker::Lorem.paragraph + " " + Faker::Lorem.paragraph,
                remote_image_url:  image_url,
                remote_image2_url: "#{image_url[0...-12]}set=set2",
                remote_image3_url: "#{image_url[0...-12]}set=set3"
                 )

end

5.times do

  tag_token = rand(4) + 2

  Post.create(  nazev:    Faker::Lorem.word.capitalize,
                remote_image_url:  Faker::Avatar.image,
                text:     Faker::Lorem.paragraph + " " + Faker::Lorem.paragraph,
                user:     User.all.sample,
                tags:     Faker::Lorem.words(tag_token).join(" "),
                datum:    Faker::Date.between(2.years.ago, Date.today)
                )
end

User.create!(jmeno: "Grimm", email: "grimm@example.com",
            password: "password", password_confirmation: "password" )
