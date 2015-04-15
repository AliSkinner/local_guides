# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Place.delete_all
City.delete_all
Comment.delete_all
Review.delete_all


u1 = User.create(name: "John Smith", image: File.open(Rails.root + "app/assets/images/1.jpg"), email: "john@mailinator.com", password:"password", password_confirmation: "password")
u2 = User.create(name: "Pierre Dupont", image: File.open(Rails.root + "app/assets/images/2.jpg"), email: "pierre@mailinator.com", password:"password", password_confirmation: "password")
u3 = User.create(name: "Hans Schwitzel", image: File.open(Rails.root + "app/assets/images/3.jpg"), email: "hans@mailinator.com", password:"password", password_confirmation: "password")
u4 = User.create(name: "Juan Cortez", image: File.open(Rails.root + "app/assets/images/4.jpg"), email: "juan@mailinator.com", password:"password", password_confirmation: "password")
u5 = User.create(name: "Giuseppe Blanco", image: File.open(Rails.root + "app/assets/images/5.jpg"), email: "giuseppe@mailinator.com", password:"password", password_confirmation: "password")
u6 = User.create(name: "Johann Johannsen ", image: File.open(Rails.root + "app/assets/images/6.jpg"), email: "johann@mailinator.com", password:"password", password_confirmation: "password")
u7 = User.create(name: "Andy Goldthwaite ", image: File.open(Rails.root + "app/assets/images/7.jpg"), email: "andy@mailinator.com", password:"password", password_confirmation: "password")
u8 = User.create(name: "Nathaphon Theerawat ", image: File.open(Rails.root + "app/assets/images/8.jpg"), email: "nat@mailinator.com", password:"password", password_confirmation: "password")
u9 = User.create(name: "Nikolai Sverik", image: File.open(Rails.root + "app/assets/images/9.jpg"), email: "nikolai@mailinator.com", password:"password", password_confirmation: "password")
u10 = User.create(name: "Henri Robelez", image: File.open(Rails.root + "app/assets/images/10.jpg"), email: "henri@mailinator.com", password:"password", password_confirmation: "password")

u11 = User.create(name: "Mary Elliot", image: File.open(Rails.root + "app/assets/images/11.jpg"), email: "mary@mailinator.com", password:"password", password_confirmation: "password")
u12 = User.create(name: "Lola Calena ", image: File.open(Rails.root + "app/assets/images/12.jpg"), email: "lola@mailinator.com", password:"password", password_confirmation: "password")
u13 = User.create(name: "Sophie O'Brian", image: File.open(Rails.root + "app/assets/images/13.jpg"), email: "sophie@mailinator.com", password:"password", password_confirmation: "password")
u14 = User.create(name: "Monica Weisse", image: File.open(Rails.root + "app/assets/images/14.jpg"), email: "monica@mailinator.com", password:"password", password_confirmation: "password")
u15 = User.create(name: "Magda Jiminez", image: File.open(Rails.root + "app/assets/images/15.jpg"), email: "magda@mailinator.com", password:"password", password_confirmation: "password")
u16 = User.create(name: "Orla Svensson", image: File.open(Rails.root + "app/assets/images/16.jpg"), email: "orla@mailinator.com", password:"password", password_confirmation: "password")
u17 = User.create(name: "Carmen Vallpolicella", image: File.open(Rails.root + "app/assets/images/17.jpg"), email: "carmen@mailinator.com", password:"password", password_confirmation: "password")
u18 = User.create(name: "Mischa Pushkin", image: File.open(Rails.root + "app/assets/images/18.jpg"), email: "mischa@mailinator.com", password:"password", password_confirmation: "password")
u19 = User.create(name: "Yoko Takamoto", image: File.open(Rails.root + "app/assets/images/19.jpg"), email: "yoko@mailinator.com", password:"password", password_confirmation: "password")

u20 = User.create(name: "Janet Smith", image: File.open(Rails.root + "app/assets/images/20.jpg"), email: "janet@mailinator.com", password:"password", password_confirmation: "password")

u21 = User.create(name: "Elliot Rogers", image: File.open(Rails.root + "app/assets/images/21.jpg"), email: "elliot@mailinator.com", password:"password", password_confirmation: "password")
u22 = User.create(name: "Johnny Carson", image: File.open(Rails.root + "app/assets/images/22.jpg"), email: "johnny2@mailinator.com", password:"password", password_confirmation: "password")
u23 = User.create(name: "Tony Berlin", image: File.open(Rails.root + "app/assets/images/23.jpg"), email: "tony@mailinator.com", password:"password", password_confirmation: "password")
u24 = User.create(name: "Barney Hind", image: File.open(Rails.root + "app/assets/images/24.jpg"), email: "barney@mailinator.com", password:"password", password_confirmation: "password")
u25 = User.create(name: "Chet Bloom", image: File.open(Rails.root + "app/assets/images/25.jpg"), email: "chet@mailinator.com", password:"password", password_confirmation: "password")
u26 = User.create(name: "Andras Sverz", image: File.open(Rails.root + "app/assets/images/26.jpg"), email: "andras@mailinator.com", password:"password", password_confirmation: "password")
u27 = User.create(name: "Enrique Carlos", image: File.open(Rails.root + "app/assets/images/27.jpg"), email: "enrique@mailinator.com", password:"password", password_confirmation: "password")
u28 = User.create(name: "Roman Constantine", image: File.open(Rails.root + "app/assets/images/28.jpg"), email: "roman@mailinator.com", password:"password", password_confirmation: "password")
u29 = User.create(name: "Hiro Kato", image: File.open(Rails.root + "app/assets/images/29.jpg"), email: "hiro@mailinator.com", password:"password", password_confirmation: "password")
u30 = User.create(name: "Ishaan Parwanda", image: File.open(Rails.root + "app/assets/images/30.jpg"), email: "ishaan@mailinator.com", password:"password", password_confirmation: "password")
u31 = User.create(name: "Will Bannister", image: File.open(Rails.root + "app/assets/images/31.jpg"), email: "will@mailinator.com", password:"password", password_confirmation: "password")

u32 = User.create(name: "Sofia Boren", image: File.open(Rails.root + "app/assets/images/32.jpg"), email: "sofia@mailinator.com", password:"password", password_confirmation: "password")
u33 = User.create(name: "Lena Marlow", image: File.open(Rails.root + "app/assets/images/33.jpg"), email: "lena@mailinator.com", password:"password", password_confirmation: "password")
u34 = User.create(name: "Ellie Green", image: File.open(Rails.root + "app/assets/images/34.jpg"), email: "ellie@mailinator.com", password:"password", password_confirmation: "password")
u35 = User.create(name: "Catalina Rubio", image: File.open(Rails.root + "app/assets/images/35.jpg"), email: "catalina@mailinator.com", password:"password", password_confirmation: "password")
u36 = User.create(name: "Aurelie Vernot", image: File.open(Rails.root + "app/assets/images/36.jpg"), email: "aurelie@mailinator.com", password:"password", password_confirmation: "password")
u37 = User.create(name: "Bernadette Howard", image: File.open(Rails.root + "app/assets/images/37.jpg"), email: "bernadette@mailinator.com", password:"password", password_confirmation: "password")
u38 = User.create(name: "Norma Jean", image: File.open(Rails.root + "app/assets/images/38.jpg"), email: "norma@mailinator.com", password:"password", password_confirmation: "password")
u39 = User.create(name: "Hayk Sayadyan", image: File.open(Rails.root + "app/assets/images/39.jpg"), email: "hayk@mailinator.com", password:"password", password_confirmation: "password")
u40 = User.create(name: "Constance Sniffle", image: File.open(Rails.root + "app/assets/images/40.jpg"), email: "constance@mailinator.com", password:"password", password_confirmation: "password")
u41 = User.create(name: "Eleanor Cartwright", image: File.open(Rails.root + "app/assets/images/41.jpg"), email: "eleanor@mailinator.com", password:"password", password_confirmation: "password")

u42 = User.create(name: "Barry Grape", image: File.open(Rails.root + "app/assets/images/42.jpg"), email: "barryg@mailinator.com", password:"password", password_confirmation: "password")
u43 = User.create(name: "Charlie Coldbloom", image: File.open(Rails.root + "app/assets/images/43.jpg"), email: "charlie@mailinator.com", password:"password", password_confirmation: "password")
u44 = User.create(name: "Hubert Noir", image: File.open(Rails.root + "app/assets/images/44.jpg"), email: "hubert@mailinator.com", password:"password", password_confirmation: "password")
u45 = User.create(name: "Antonio Parente", image: File.open(Rails.root + "app/assets/images/45.jpg"), email: "antonio@mailinator.com", password:"password", password_confirmation: "password")
u46 = User.create(name: "Herbert Genevieve", image: File.open(Rails.root + "app/assets/images/46.jpg"), email: "herbert@mailinator.com", password:"password", password_confirmation: "password")
u47 = User.create(name: "Augustine Jenesaisquoi", image: File.open(Rails.root + "app/assets/images/47.jpg"), email: "augustine@mailinator.com", password:"password", password_confirmation: "password")
u48 = User.create(name: "Stelios Konstanopoulos", image: File.open(Rails.root + "app/assets/images/48.jpg"), email: "stelios@mailinator.com", password:"password", password_confirmation: "password")
u49 = User.create(name: "Florian Wendelstadt", image: File.open(Rails.root + "app/assets/images/49.jpg"), email: "florian@mailinator.com", password:"password", password_confirmation: "password")
u50 = User.create(name: "Jake Buzzkick", image: File.open(Rails.root + "app/assets/images/50.jpg"), email: "jake@mailinator.com", password:"password", password_confirmation: "password")




c1 = City.create(name: "London", latitude: 51.507350899999998716793925268575549126, longitude: -0.127758299999999991314325598068535328, image: File.open(Rails.root + "app/assets/images/london.jpg"))
sleep(1.second)
c2 = City.create(name: "Paris", latitude: 48.856614000000000430645741289481520653, longitude: 2.352221899999999976671460899524390697, image: File.open(Rails.root + "app/assets/images/paris.jpg"))
sleep(1.second)
c3 = City.create(name: "Berlin", latitude: 52.520006599999987884075380861759185791, longitude: 13.404954000000000036152414395473897457, image: File.open(Rails.root + "app/assets/images/berlin.jpg"))
sleep(1.second)
c4 = City.create(name: "Madrid", latitude: 40.416775399999998796829459024593234062, longitude: -3.703790199999999810387407706002704799, image: File.open(Rails.root + "app/assets/images/madrid.jpg"))
sleep(1.second)
c5 = City.create(name: "Rome", latitude: 41.902783499999998184648575261235237122, longitude: 12.496365499999999570945874438621103764, image: File.open(Rails.root + "app/assets/images/rome.jpg"))
sleep(1.second)
c6 = City.create(name: "Stockholm", latitude: 59.329323499999986779585015028715133667, longitude: 18.068580799999999442206899402663111687, image: File.open(Rails.root + "app/assets/images/stockholm.jpg"))
sleep(1.second)
c7 = City.create(name: "New York", latitude: 40.712784, longitude: -74.005941, image: File.open(Rails.root + "app/assets/images/newyork.jpg"))
sleep(1.second)
c8 = City.create(name: "Buenos Aires", latitude: -34.603723, longitude: -58.381593, image: File.open(Rails.root + "app/assets/images/buenosaires.jpg"))
sleep(1.second)
c9 = City.create(name: "Bangkok", latitude: 13.756331, longitude: 100.501765, image: File.open(Rails.root + "app/assets/images/bangkok.jpg"))
sleep(1.second)
c10 = City.create(name: "San Francisco", latitude: 37.774929, longitude: -122.419416, image: File.open(Rails.root + "app/assets/images/sanfrancisco.jpg"))
sleep(5.seconds)
c11 = City.create(name: "Vancouver", latitude: 45.638728, longitude: -122.661486, image: File.open(Rails.root + "app/assets/images/vancouver.jpg"))
sleep(1.second)
c12 = City.create(name: "Tokyo", latitude: 35.689487, longitude: 139.691706, image: File.open(Rails.root + "app/assets/images/tokyo.jpg"))
sleep(1.second)
c13 = City.create(name: "Barcelona", latitude: 41.385064, longitude: 2.173403, image: File.open(Rails.root + "app/assets/images/barcelona.jpg"))
sleep(1.second)
c14 = City.create(name: "Cape Town", latitude: -33.924869, longitude: 18.424055, image: File.open(Rails.root + "app/assets/images/capetown.jpg"))
sleep(1.second)
c15 = City.create(name: "Melbourne", latitude: 28.083627, longitude: -80.608109, image: File.open(Rails.root + "app/assets/images/melbourne.jpg"))
sleep(1.second)
c16 = City.create(name: "Edinburgh", latitude: 55.953252, longitude: -3.188267, image: File.open(Rails.root + "app/assets/images/edinburgh.jpg"))
sleep(1.second)
c17 = City.create(name: "Amsterdam", latitude: 52.370216, longitude: 4.895168, image: File.open(Rails.root + "app/assets/images/amsterdam.jpg"))
sleep(1.second)
c18 = City.create(name: "Moscow", latitude: 55.755826, longitude: 37.617300, image: File.open(Rails.root + "app/assets/images/moscow.jpg"))
sleep(1.second)
c19 = City.create(name: "Istanbul", latitude: 41.005270, longitude: 28.976960, image: File.open(Rails.root + "app/assets/images/istanbul.jpg"))
sleep(1.second)
c20 = City.create(name: "Hong Kong", latitude: 22.396428, longitude: 114.109497, image: File.open(Rails.root + "app/assets/images/hongkong.jpg"))
sleep(5.seconds)



# u1 = User.find(1)
# u2 = User.find(2)
# u3 = User.find(3)
# u4 = User.find(4)
# u5 = User.find(5)
# u6 = User.find(6)
# u7 = User.find(7)
# u8 = User.find(8)
# u9 = User.find(9)
# u10 = User.find(10)
# u11 = User.find(11)
# u12 = User.find(12)
# u13 = User.find(13)
# u14 = User.find(14)
# u15 = User.find(15)
# u16 = User.find(16)
# u17 = User.find(17)
# u18 = User.find(18)
# u19 = User.find(19)
# u20 = User.find(20)
# u21 = User.find(21)
# u22 = User.find(22)
# u23 = User.find(23)
# u24 = User.find(24)
# u25 = User.find(25)
# u26 = User.find(26)
# u27 = User.find(27)
# u28 = User.find(28)
# u29 = User.find(29)
# u30 = User.find(30)
# u31 = User.find(31)
# u32 = User.find(32)
# u33 = User.find(33)
# u34 = User.find(34)
# u35 = User.find(35)
# u36 = User.find(36)
# u37 = User.find(37)
# u38 = User.find(38)
# u39 = User.find(39)
# u40 = User.find(40)
# u41 = User.find(41)
# u42 = User.find(42)
# u43 = User.find(43)
# u44 = User.find(44)
# u45 = User.find(45)
# u46 = User.find(46)
# u47 = User.find(47)
# u48 = User.find(48)
# u49 = User.find(49)
# u50 = User.find(50)

# c1 = City.find(1)
# c2 = City.find(2)
# c3 = City.find(3)
# c4 = City.find(4)
# c5 = City.find(5)
# c6 = City.find(6)
# c7 = City.find(7)
# c8 = City.find(8)
# c9 = City.find(9)
# c10 = City.find(10)
# c11 = City.find(11)
# c12 = City.find(12)
# c13 = City.find(13)
# c14 = City.find(14)
# c15 = City.find(15)
# c16 = City.find(16)
# c17 = City.find(17)
# c18 = City.find(18)
# c19 = City.find(19)
# c20 = City.find(20)
# # # puts users into cities
c1.users << [u1, u23, u34]
c2.users << [u2, u10, u36, u47]
c3.users << [u3, u14, u44]
c4.users << [u4, u32, u48]
c5.users << [u5, u17, u45]
c6.users << [u6, u16]
c7.users << [u7, u25, u50]
c8.users << [u12, u27]
c9.users << [u8, u19]
c10.users <<  [ u22, u31, u41]
c11.users <<  [ u11, u40]
c12.users <<  [ u19, u29]
c13.users <<  [ u15, u33]
c14.users <<  [ u20, u37]
c15.users <<  [ u21, u35]
c16.users <<  [ u13, u38, u43]
c17.users <<  [ u24, u28, u49]
c18.users <<  [ u9, u18]
c19.users <<  [ u26, u46]
c20.users <<  [ u30, u42]



p1 = Place.create(title:"The Last Tuesday Society", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place1.jpg"), lat: 51.535191, lng: 0.057889 )
sleep(1.second)
p2 = Place.create(title:"Pere Lachaise Cemetery", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place2.jpg"), lat: 48.862211, lng: 2.393676)
sleep(1.second)
p3 = Place.create(title:"Das Technoklub", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place3.jpg"), lat: 52.512870, lng: 13.364540)
sleep(1.second)
p4 = Place.create(title:"Tapastic", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place4.jpg"), lat: 40.426042, lng: -3.678186)
sleep(1.second)
p5 = Place.create(title:"La Gellato", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place5.jpg"), lat: 41.887775, lng: 12.476002)
sleep(1.second)
p6 = Place.create(title:"Saunaland", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/place6.jpg"), lat: 59.329513, lng: 18.064021)
sleep(1.second)

p7 = Place.create(title:"Folkways", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/folkways.jpg"), lat: 40.803828, lng: -73.950756)
sleep(1.second)

p8 = Place.create(title:"La Cabbera", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/lacabbrera.jpg"), lat: -34.636892, lng: -58.400232)
sleep(1.second)

p9 = Place.create(title:"Flower Market", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/bkkflower.jpg"), lat: 13.732553, lng: 100.512433)
sleep(1.second)

p10 = Place.create(title:"Mount Tam", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/mt-tam.jpg"), lat: 37.949294, lng: -122.640783)
sleep(5.seconds)

p11 = Place.create(title:"The Templeton", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/templeton.jpg"), lat: 49.278418, lng: -123.124670)
sleep(1.second)

p12 = Place.create(title:"Little Shop Curry", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/curry-shop.jpg"), lat: 35.658568, lng: 139.693609)
sleep(1.second)

p13 = Place.create(title:"Bar Tarannà", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/tarrana.jpg"), lat: 41.375929, lng: 2.160162)
sleep(1.second)

p14 = Place.create(title:"Noordhoek Beach", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/noordhoek.jpg"), lat: -34.101041, lng: 18.353155)
sleep(1.second)

p15 = Place.create(title:"Heide Gallery and Garden", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/heide.jpg"), lat: -37.766834, lng: 145.098029)
sleep(1.second)

p16 = Place.create(title:"Pellegrini's Cafe", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/pellegrinis.jpg"), lat: -37.811934, lng: 144.970927)
sleep(1.second)

p17 = Place.create(title:"Hosier Lane and Street Art Lanes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/hosier.jpg"), lat: -37.817641, lng: 144.968016)
sleep(1.second)

p18 = Place.create(title:"Arthur's Seat", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/arthurseat.jpg"), lat: 55.944660, lng: -3.165696)
sleep(1.second)

p19 = Place.create(title:"Valvona & Crolla Ltd", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/valvona.jpg"), lat: 55.959164, lng: -3.183399)
sleep(1.second)

p20 = Place.create(title:"Dunbar Beach", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/dunbar.jpg"), lat: 41.681011, lng: -87.011961)
sleep(5.seconds)

p21 = Place.create(title:"Pianola Museum", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/pianola.jpg"), lat: 52.378718, lng: 4.883845)
sleep(1.second)

p22 = Place.create(title:"Begijnhof", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/begijnhof.jpg"), lat: 52.370293, lng: 4.889411)
sleep(1.second)

p23 = Place.create(title:"Stalin's Secret Metro", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/stalin.jpg"), lat: 55.713642, lng: 37.638331)
sleep(1.second)

p24 = Place.create(title:"More Vnutri", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/morevnuti.jpg"), lat: 55.751504, lng: 37.607167)
sleep(1.second)

p25 = Place.create(title:"Little Sheep Hot Pot", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/hotpot.jpg"), lat: 22.300274, lng: 114.173094)
sleep(1.second)

p26 = Place.create(title:"Grandma Bakeshop – A Turkish Pastry", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/pastry.jpg"), lat: 41.048013, lng: 28.994947)
sleep(1.second)

p27 = Place.create(title:"Squid Tree - Hampstead Heath", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/heath.jpg"), lat: 51.562903, lng: -0.172279)
sleep(1.second)

p28 = Place.create(title:"Rio Cinema", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/rio.jpg"), lat: 51.549284, lng: -0.075398)
sleep(1.second)

p29 = Place.create(title:"The Green Lung", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/greenlung.jpg"), lat: 13.691788, lng: 100.568309)
sleep(1.second)

p30 = Place.create(title:"Street Food at Ari, Soi 1", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut labore minima laboriosam, ab repellat aliquid error necessitatibus nihil veritatis laudantium totam voluptas sint nemo quasi. Possimus, vel? Nisi, voluptate, fuga!", address: "Lorem ipsum dolor sit amet, consectetur adipisicing elit", image: File.open(Rails.root + "app/assets/images/ari.jpg"), lat: 13.780625, lng: 100.544104)
sleep(5.seconds)






# p1 = Place.find(1)
# p2 = Place.find(2)
# p3 = Place.find(3)
# p4 = Place.find(4)
# p5 = Place.find(5)
# p6 = Place.find(6)
# p7 = Place.find(7)
# p8 = Place.find(8)
# p9 = Place.find(9)
# p10 = Place.find(10)
# p11 = Place.find(11)
# p12 = Place.find(12)
# p13 = Place.find(13)
# p14 = Place.find(14)
# p15 = Place.find(15)
# p16 = Place.find(16)
# p17 = Place.find(17)
# p18 = Place.find(18)
# p19 = Place.find(19)
# p20 = Place.find(20)
# p21 = Place.find(21)
# p22 = Place.find(22)
# p23 = Place.find(23)
# p24 = Place.find(24)
# p25 = Place.find(25)
# p26 = Place.find(26)
# p27 = Place.find(27)
# p28 = Place.find(28)
# p29 = Place.find(29)
# p30 = Place.find(30)


# # # assigning places to users
u1.places << p1
u23.places << p27 
u34.places << p28 
u2.places << p2
u3.places << p3 
u4.places << p4
u5.places << p5
u6.places << p6
u7.places << p7
u12.places << p8
u8.places << [p9, p29, p30]
u41.places << p10
u40.places << p11 
u29.places << p12
u33.places << p13
u37.places << p14
u35.places << p15
u21.places << [p16, p17]
u13.places << p20
u43.places << p18
u38.places << p19
u24.places << p22
u49.places << p21
u9.places << p24
u18.places << p23
u46.places << p26
u42.places << p25

  
cm1 = Comment.create(body:"I, Pierre, liked The Last Tuesday Society", user_id: u2.id)

cm2 = Comment.create(body:"I, John, liked Pere Lachaise Cemetery", user_id: u1.id)

cm3 = Comment.create(body:"I, Hans, liked Tapastic", user_id: u3.id)

cm4 = Comment.create(body:"I, Juan, like Das Technoklub", user_id: u4.id)

cm5 = Comment.create(body:"I, Johann, liked La Gellato", user_id: u6.id)

cm6 = Comment.create(body:"I, Giuseppe, like Saunaland", user_id: u5.id)

cm7 = Comment.create(body:"This is a cool place! Loads of weird stuff!", user_id: u33.id)

cm8 = Comment.create(body:"Thanks for the recommendation! I saw some great bands here...", user_id: u32.id)

cm9 = Comment.create(body:"Damn! these guys do the best steak in town. Cheap too!!!", user_id: u31.id)

cm10 = Comment.create(body:"This was such a treat! I never would have found this! I'll be recommending this to friends.", user_id: u30.id)
cm11 = Comment.create(body:"So beautiful! A Cultural 'must' for anyone visiting the city", user_id: u29.id)

cm12 = Comment.create(body:"I sepend the day cycling here with some locals. It's a little tricky to get to, but SOOO worth it!", user_id: u27.id)
cm13 = Comment.create(body:"Beautiful! Like a jungle in the city!", user_id: u27.id)

cm14 = Comment.create(body:"This seems like a  pretty pretty hip place to hang out. Lots of great food and cool people.", user_id: u26.id)


cm15 = Comment.create(body:"It was so nice to get out of the city and see this place! Amazing views out to the ocean", user_id: u6.id, place_id: p25.id)
cm16 = Comment.create(body:"This was one of my favourtite parts of my S.F. trip", user_id: u24.id)

cm17 = Comment.create(body:"Great food, as expected. A little pricey though!", user_id: u23.id)
cm18 = Comment.create(body:"The breakfast was sooooooo good!!!!!", user_id: u22.id)

cm19 = Comment.create(body:"This little restaurant was amazing! My girlfriend and I were the only non-locals!", user_id: u21.id)
cm20 = Comment.create(body:"get the katsu!!!!!!", user_id: u4.id)

cm21 = Comment.create(body:"Great place for a cerveza and dancing in the evening ;)", user_id: u20.id)

cm22 = Comment.create(body:"This place was cool. We saw a good exhibition, and the staff were super-friendly! Good recommendation!", user_id: u19.id)
cm23 = Comment.create(body:"Classic Melbourne! Cool place, guys!", user_id: u18.id)

cm24 = Comment.create(body:"Great ice cream! I actually ended up coming here 3 times on my trip!", user_id: u17.id)

cm25 = Comment.create(body:"Amazing graff around here! cool spot!", user_id: u16.id)

cm26 = Comment.create(body:"This was so worth braving the cold and wind for!", user_id: u15.id)
cm27 = Comment.create(body:"My quards were on fire after this, but it was worth it!", user_id: u14.id)

cm28 = Comment.create(body:"This traditional Italian deli is so beautiful! The food is amazing! ", user_id: u13.id)
cm29 = Comment.create(body:"Good coffee......", user_id: u12.id)

cm30 = Comment.create(body:"Man, this is not like the beaches I'm used to! Don't bother bringing your swimming kit! COLD!!!!", user_id: u11.id)

cm31 = Comment.create(body:"This quirky little place was a nice respite from the tourist crowds", user_id: u10.id)
cm32 = Comment.create(body:"Pretty boring, considering the price.....", user_id: u9.id)


cm33 = Comment.create(body:"One for the culture vultures. Probably not one for the kids, though!", user_id: u8.id)

cm34 = Comment.create(body:"Wow! This was amazing! So cool! ", user_id: u7.id)
cm35 = Comment.create(body:"This is creepy! worth a look, though.... bring a flashlight!", user_id: u6.id)

cm36 = Comment.create(body:"Damn, Grandma can cook a mean baklava!", user_id: u5.id)
cm37 = Comment.create(body:"The ones with pistachio and honey are to die for!", user_id: u4.id)

cm38 = Comment.create(body:"I was taken here by my friend who lives here. Apparently it's pretty famous. Good food, though...", user_id: u3.id)
cm39 = Comment.create(body:"This is such a fun way of eating!", user_id: u2.id)
cm40 = Comment.create(body:"DO NOT ASK FOR THE SPICY!!!!!!!! :O", user_id: u1.id)



# # assigning comments to places
p1.comments << [cm1, cm7]          
p2.comments << cm2            
p3.comments << cm4            
p4.comments << cm3            
p5.comments << cm5            
p6.comments << cm6            
p7.comments << cm8            
p8.comments << cm9            
p9.comments << [cm10, cm11]           
p10.comments << [cm15, cm16]            
p11.comments << [cm17, cm18]            
p12.comments << [cm19, cm20]            
p13.comments << cm21            
p15.comments << [cm22, cm23]          
p16.comments << cm24           
p17.comments << cm25            
p18.comments << [cm26, cm27]            
p19.comments << [cm28, cm29]            
p20.comments << cm30            
p21.comments << [cm31, cm32]            
p22.comments << cm33          
p23.comments << [cm34, cm35]            
p25.comments << [cm38, cm39, cm40]
p26.comments << [cm36, cm37]            
p29.comments << [cm12, cm13]            
p30.comments << cm14            

r1 = Review.create(reviewer_id: u1.id, body: "I, John, liked Pierre")
r2 = Review.create(reviewer_id: u2.id, body: "I, Pierre, liked John")
r3 = Review.create(reviewer_id: u3.id, body: "I, Hans, liked Juan")
r4 = Review.create(reviewer_id: u4.id, body: "I, Juan, liked Hans")
r5 = Review.create(reviewer_id: u5.id, body: "I, Giuseppe, liked Johann")
r6 = Review.create(reviewer_id: u6.id, body: "I, Johann, liked Giuseppe")

# # assigning reviews to users
u1.reviews << r2
u2.reviews << r1
u3.reviews << r4
u4.reviews << r3
u5.reviews << r6
u6.reviews << r5


puts "seed successful"