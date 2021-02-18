require 'open-uri'

puts "Cleaning database.."

Provider.destroy_all
User.destroy_all
Booking.destroy_all
puts "Creating database.."



# USERS
ro_user = User.new(name: "Rocio", last_name: "Picaza", password: "123456", email: "ropicaza@gmail.com")
tom_user = User.new(name: "Tomas", last_name: "Agnese", password: "123456", email: "tomagnese@gmail.com")
joaco_user = User.new(name: "Joaquin", last_name: "Casanova", password: "123456", email: "joacocasanova@gmail.com")
camilo_user = User.new(name: "Camilo", last_name: "Gonzalez", password: "123456", email: "camilogonzalez@gmail.com")

ro_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/Ro_bkfwby.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
joaco_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343080/Turna/joacoavatar_kkzo21.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
tom_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/tom_ps9ctl.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
camilo_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343080/Turna/camilo_betzts.jpg'), filename: 'default_avatar.png', content_type: 'image/png')

ro_user.save
joaco_user.save
tom_user.save
camilo_user.save

# IMAGES

provider_1 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1598887142487-3c854d51eabb_ymkig7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599101-f09722fb4948_kl5ywi.jpg"]
provider_2 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1598887142487-3c854d51eabb_ymkig7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1522337660859-02fbefca4702_tci1nr.jpg"]
provider_3 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599101-f09722fb4948_kl5ywi.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg"]
provider_4 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1598887142487-3c854d51eabb_ymkig7.jpg"]
provider_5 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1522337660859-02fbefca4702_tci1nr.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg"]

# PROVIDERS CREATION

ro_prov = Provider.create!(category: "Peluqueria", name: "Pelu de RO", address: "Paraguay 5301, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Corte, tintura, manicura", rating: 5, opening_time: '10:00:00', closing_time: '20:00:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina")
tom_prov = Provider.create!(category: "Peluqueria", name: "Pelu de TOM", address: "Humboldt 2120, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Barba, corte, perfilado", rating: 4, opening_time: '12:00:00', closing_time: '20:00:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina" )
joaco_prov = Provider.create!(category: "Peluqueria", name: "Pelu de JOACO", address: "Bonpland 1874, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Corte, depilacion, alisados", rating: 3, opening_time: '12:00:00', closing_time: '19:00:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina" )
guido_prov = Provider.create!(category: "Peluqueria", name: "Pelu de Guido", address: "Soler 5608, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Tintura, depilacion, perfilado", rating: 5, opening_time: '10:00:00', closing_time: '18:00:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina" )
camilo_prov = Provider.create!(category: "Peluqueria", name: "Pelu de Camilo", address: "Fitz Roy 1834, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Barba, alisado, manicura", rating: 4, opening_time: '10:00:00', closing_time: '19:00:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina" )

# IMAGES ATTACHING
provider_1.each do |img|
  provider_1_img = URI.open(img)
  ro_prov.photos.attach(io: provider_1_img, filename: 'prov_img.png', content_type: 'image/png')
  ro_prov.save
end

provider_2.each do |img|
  provider_2_img = URI.open(img)
  tom_prov.photos.attach(io: provider_2_img, filename: 'prov_img.png', content_type: 'image/png')
  tom_prov.save
end

provider_3.each do |img|
  provider_3_img = URI.open(img)
  joaco_prov.photos.attach(io: provider_3_img, filename: 'prov_img.png', content_type: 'image/png')
  joaco_prov.save
end

provider_4.each do |img|
  provider_4_img = URI.open(img)
  guido_prov.photos.attach(io: provider_4_img, filename: 'prov_img.png', content_type: 'image/png')
  guido_prov.save
end

provider_5.each do |img|
  provider_5_img = URI.open(img)
  camilo_prov.photos.attach(io: provider_5_img, filename: 'prov_img.png', content_type: 'image/png')
  camilo_prov.save
end

start_date = Date.today

joaco_experience = Booking.create!(customer: joaco_user, provider: ro_prov, start_datetime: start_date - 3.days + 16.hours, end_datetime: start_date - 3.days + 16.hours + 45.minutes, status: "accepted")

tom_experience = Booking.create!(customer: tom_user, provider: ro_prov, start_datetime: start_date + 2.days + 16.hours, end_datetime: start_date + 2.days + 16.hours + 45.minutes, status: "accepted")

tom_experience1 = Booking.create!(customer: tom_user, provider: ro_prov, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 16.hours + 45.minutes, status: "completed")

tom_experience2 = Booking.create!(customer: tom_user, provider: ro_prov, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 16.hours + 45.minutes, status: "canceled")


camilo_experience = Booking.create!(customer: camilo_user, provider: ro_prov, start_datetime: start_date - 4.days + 16.hours, end_datetime: start_date - 4.days + 16.hours + 45.minutes, status: "accepted")


Review.create!(user: joaco_user, booking: joaco_experience, content: "Excelente lugar! Fui atendido en tiempo y forma.", rating: 4)


Review.create!(user: camilo_user, booking: camilo_experience, content: "Buen lugar a nivel precio/calidad. Recomendado", rating: 3)