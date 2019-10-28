# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
puts "Tous les city sont supprimés\n"
User.destroy_all
puts "Tous les utilisateurs sont supprimés\n"
Gossip.destroy_all
puts "Tous les potins sont supprimés\n"
Tag.destroy_all
puts "Tous les tags sont supprimés\n"
GossipTag.destroy_all
puts "Tous les tags des gossips sont supprimés\n"

c = []
g = []
t = []
u = []
10.times do |i|
	c[i] = City.create(name: Faker::JapaneseMedia::OnePiece.location, zip_code: Faker::Address.zip_code)
	u[i] = User.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name,
	description: Faker::JapaneseMedia::OnePiece.akuma_no_mi, email:Faker::Internet.email, age:rand(15..30), city_id: c[i].id)
	puts "#{i*10+1}%"
end
puts "\ncreation city && users terminé"

10.times do |i|
	t[i] = Tag.create(title: "##{Faker::App.name}")
	puts "#{i*10+1}%"
end
puts "\ncreation tag terminé"

20.times do |j|
	g[j] = Gossip.create(title: Faker::JapaneseMedia::DragonBall.character, content: Faker::Books::Dune.quote, user_id: c[rand(9)].id)
	puts "#{j*5+1}%"
end
puts "\ncreation gossip terminé"

40.times do |i|
	GossipTag.create(tag: t[rand(9)], gossip: g[rand(19)])
	puts "#{i*2+21}%"
end
puts "\nRelation entre les tags terminé"


10.times do |i|
	pm = PrivateMessage.new(content: Faker::TvShows::Friends.quote)
	pm.sender = u[i]
	pm.recipient = u[rand(9)]
	pm.save
	puts "#{i*10+1}%"
end
puts "\nMp cree et bien envoyer"

20.times do |i|
	Comment.create(content: Faker::TvShows::Community.quotes, user_id:u[rand(9)].id, gossip_id: g[rand(19)].id)
	puts "#{i*5+1}%"
end
puts "\nLes commentaire sont tous appliquer au potins"
