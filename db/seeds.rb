# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "John Smith", image: File.open(Rails.root + "app/assets/images/seed-profile.jpg"), email: "john@mailinator.com", password:"password", password_confirmation: "password")
u2 = User.create(name: "Pierre Dupont", image: File.open(Rails.root + "app/assets/images/seed-profile.jpg"), email: "pierre@mailinator.com", password:"password", password_confirmation: "password")
u3 = User.create(name: "Hans Schwitzel", image: File.open(Rails.root + "app/assets/images/seed-profile.jpg"), email: "hans@mailinator.com", password:"password", password_confirmation: "password")
u4 = User.create(name: "Juan Cortez", image: File.open(Rails.root + "app/assets/images/seed-profile.jpg"), email: "juan@mailinator.com", password:"password", password_confirmation: "password")
u5 = User.create(name: "Giuseppe Blanco", image: File.open(Rails.root + "app/assets/images/seed-profile.jpg"), email: "Giuseppe@mailinator.com", password:"password", password_confirmation: "password")
u6 = User.create(name: "Johann Johannsen ", image: File.open(Rails.root + "app/assets/images/seed-profile.jpg"), email: "johann@mailinator.com", password:"password", password_confirmation: "password")

c1 = City.create(name: "London", latitude: 51.507350899999998716793925268575549126, longitude: -0.127758299999999991314325598068535328)
c2 = City.create(name: "Paris", latitude: 48.856614000000000430645741289481520653, longitude: 2.352221899999999976671460899524390697)
c3 = City.create(name: "Berlin", latitude: 52.520006599999987884075380861759185791, longitude: 13.404954000000000036152414395473897457)
c4 = City.create(name: "Madrid", latitude: 40.416775399999998796829459024593234062, longitude: -3.703790199999999810387407706002704799)
c5 = City.create(name: "Rome", latitude: 41.902783499999998184648575261235237122, longitude: 12.496365499999999570945874438621103764)
c6 = City.create(name: "Stockholm", latitude: 59.329323499999986779585015028715133667, longitude: 18.068580799999999442206899402663111687)

# puts users into cities
c1.users << u1
c2.users << u2
c3.users << u3
c4.users << u4
c5.users << u5
c6.users << u6


p1 = Place.create(title:"The Last Tuesday Society", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place1.jpg"), lat: 51.535191, lng: 0.057889 )
p2 = Place.create(title:"Pere Lachaise Cemetery", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place2.jpg"), lat: 48.862211, lng: 2.393676)
p3 = Place.create(title:"Das Technoklub", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place3.jpg"), lat: 52.512870, lng: 13.364540)
p4 = Place.create(title:"Tapastic", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place4.jpg"), lat: 40.426042, lng: -3.678186)
p5 = Place.create(title:"La Gellato", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place5.jpg"), lat: 41.887775, lng: 12.476002)
p6 = Place.create(title:"Saunaland", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place6.jpg"), lat: 59.329513, lng: 18.064021)

# assigning places to users
u1.places << p1
u2.places << p2
u3.places << p3
u4.places << p4
u5.places << p5
u6.places << p6

  
cm1 = Comment.create(body:"I, Pierre, liked The Last Tuesday Society", user_id: u2.id, place_id: p1.id)
cm2 = Comment.create(body:"I, John, liked Pere Lachaise Cemetery", user_id: u1.id, place_id: p2.id)
cm3 = Comment.create(body:"I, Hans, liked Tapastic", user_id: u3.id, place_id: p4.id)
cm4 = Comment.create(body:"I, Juan, like Das Technoklub", user_id: u4.id, place_id: p3.id)
cm5 = Comment.create(body:"I, Johann, liked La Gellato", user_id: u6.id, place_id: p5.id)
cm6 = Comment.create(body:"I, Giuseppe, like Saunaland", user_id: u5.id, place_id: p6.id)

# assigning comments to places
p1.comments << cm1
p2.comments << cm2
p3.comments << cm3
p4.comments << cm4
p5.comments << cm5
p6.comments << cm6


r1 = Review.create(reviewer_id: u1.id, body: "I, John, liked Pierre")
r2 = Review.create(reviewer_id: u2.id, body: "I, Pierre, liked John")
r3 = Review.create(reviewer_id: u3.id, body: "I, Hans, liked Juan")
r4 = Review.create(reviewer_id: u4.id, body: "I, Juan, liked Hans")
r5 = Review.create(reviewer_id: u5.id, body: "I, Giuseppe, liked Johann")
r6 = Review.create(reviewer_id: u6.id, body: "I, Johann, liked Giuseppe")

# assigning reviews to users
u1.reviews << r2
u2.reviews << r1
u3.reviews << r4
u4.reviews << r3
u5.reviews << r6
u6.reviews << r5


puts "seed successful"