# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Artist.create(name: "Jared", bio: "Hey hey hey!")
Artist.create(name: "Luke", bio: "Yo yo yo!")
met = Artist.create(name: "Metallica", bio: "woo! guitars!")
asob = Artist.create(name: "Arrogant Sons of Bitches", bio: "Woo! Guitars and trombones!")
kdot = Artist.create(name: "Kendrick Lamar", bio: "Woo! bass guitars and sick beats!")
ska = Genre.create(name: "Ska Punk")
hiphop = Genre.create(name: "Hip Hop")
metal = Genre.create(name: "Metal")
Song.create(name: "Ride the Lightning", artist: met, genre: metal)
Song.create(name: "Kill the President", artist: asob, genre: ska)
Song.create(name: "Wesley's Theory", artist: kdot, genre: hiphop)
