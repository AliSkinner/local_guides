# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "John Smith", image: "http://placecage.com/200/300", email: "john@mailinator.com", password:"password", password_confirmation: "password")
u2 = User.create(name: "Pierre Dupont", image: "http://placecage.com/200/300", email: "pierre@mailinator.com", password:"password", password_confirmation: "password")
u3 = User.create(name: "Hans Schwitzel", image: "http://placecage.com/200/300", email: "hans@mailinator.com", password:"password", password_confirmation: "password")
u4 = User.create(name: "Juan Cortez", image: "http://placecage.com/200/300", email: "juan@mailinator.com", password:"password", password_confirmation: "password")
u5 = User.create(name: "Giuseppe Blanco", image: "http://placecage.com/200/300", email: "giuseppe@mailinator.com", password:"password", password_confirmation: "password")
u6 = User.create(name: "Johann Johannsen ", image: "http://placecage.com/200/300", email: "johann@mailinator.com", password:"password", password_confirmation: "password")

c1 = City.create(name: "London")
c2 = City.create(name: "Paris")
c3 = City.create(name: "Berlin")
c4 = City.create(name: "Madrid")
c5 = City.create(name: "Rome")
c6 = City.create(name: "Stockholm")

# puts users into cities
c1.users << u1
c2.users << u2
c3.users << u3
c4.users << u4
c5.users << u5
c6.users << u6


p1 = Place.create(title:"The Last Tuesday Society", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: "https://londoninsight.files.wordpress.com/2011/05/1b2q5488.jpg", lat: 51.535191, long: 0.057889 )
p2 = Place.create(title:"Pere Lachaise Cemetery", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: "http://promptguides.com/paris/_photos/pere_lachaise_cemetery/pere_lachaise_cemetery_007.jpg", lat: 48.862211, long: 2.393676)
p3 = Place.create(title:"Das Technoklub", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: "http://www.techno-bass.de/wp-content/uploads/2011/08/techno_club_open_air.jpg", lat: 52.512870, long: 13.364540)
p4 = Place.create(title:"Tapastic", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: "http://gb.fotolibra.com/images/previews/660541-restaurant-menu-madrid-spain.jpeg", lat: 40.426042, long: -3.678186)
p5 = Place.create(title:"La Gellato", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: "http://media-cdn.tripadvisor.com/media/photo-s/03/d4/e9/69/daves-gelateria.jpg", lat: 41.887775, long: 12.476002)
p6 = Place.create(title:"Saunaland", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: "http://www.highlife.ie/media/188028/myrtille043a.jpg", lat: 59.329513, long: 18.064021)

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