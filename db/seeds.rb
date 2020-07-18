# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

image_url = "https://www.webfx.com/blog/images/cdn.designinstruct.com/files/582-how-to-image-placeholders/generic-image-placeholder.png"

casper = Comedian.create!(name: "Casper", age: 100, city: "Boston", image_url: image_url)
spiderman = Comedian.create!(name: "Spiderman", age: 28, city: "New York City", image_url: image_url)

spooktober1 = casper.tv_specials.create!(name: "Spook-Tober!", run_time: 80 )
spooktober2 = casper.tv_specials.create!(name: "Spook-Tober! Encore!", run_time: 120 )

spidertober = spiderman.tv_specials.create!(name: "Spiderman: The Comedy!", run_time: 90 )
