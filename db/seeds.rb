# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
visions = Vision.create(
  color: "indigo",
  content:
    "I'd like to live in a world where everyone is treated equally regardless of their gender, race, sexual orientation, religious belief or disability.

    I'd like to live in a world where nurses are paid what they're worth and not what we can get away with paying them.

    I'd like to live in a world where prostitutes and drug dealers didn't exist, not because we'd outlawed them but because their services weren't required.

    I'd like to live in a world which has eradicated poverty and dedicated time and resources to getting literacy levels as close to 100% as possible.

    I'd like to live in a world with no advertising industry, nobody that described themselves as 'a public relations consultant' and about 5% of the lawyers we have currently.

    I'd like to live in a world that had worked out what causes people to sexually molest infants and done something to stop it.

    I'd like to live in a world in which Jerry Garcia, Frank Zappa, Nick Drake, Janis Joplin, Jimi Hendrix, SRV, Lennon and Harrison weren't dead.

    I'd like to live in a world in which nobody has an argument about who is a terrorist and who is a freedom fighter because there is no need for either to exist.

    Image Source: http://gallantbranding.com/wp-content/uploads/2016/06/Why-We-Exist-Illustration-e1465363615353.jpg
    Text Source: https://www.quora.com/What-kind-of-world-do-you-want-to-live-in/answer/David-Stewart-8",
  image: File.new("#{Rails.root}/app/assets/images/seed/vision-1.jpg")
)
