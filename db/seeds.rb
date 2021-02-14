require 'open-uri'

puts "Cleaning database.."

Provider.destroy_all
User.destroy_all

puts "Creating database.."



# USERS
ro_user = User.new(name: "Rocio", last_name: "Picaza", password: "123456", email: "ropicaza@gmail.com")
tom_user = User.new(name: "Tomas", last_name: "Agnese", password: "123456", email: "tomagnese@gmail.com")
joaco_user = User.new(name: "Joaquin", last_name: "Casanova", password: "123456", email: "joacocasanova@gmail.com")


ro_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613240448/Turna/My_profile-orange-300x300_v5b2u3.png'), filename: 'default_avatar.png', content_type: 'image/png')
joaco_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613240448/Turna/My_profile-orange-300x300_v5b2u3.png'), filename: 'default_avatar.png', content_type: 'image/png')
tom_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613240448/Turna/My_profile-orange-300x300_v5b2u3.png'), filename: 'default_avatar.png', content_type: 'image/png')

ro_user.save
joaco_user.save
tom_user.save

# IMAGES

provider_1 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1598887142487-3c854d51eabb_ymkig7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599101-f09722fb4948_kl5ywi.jpg"]
provider_2 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1598887142487-3c854d51eabb_ymkig7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1522337660859-02fbefca4702_tci1nr.jpg"]
provider_3 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599101-f09722fb4948_kl5ywi.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg"]
provider_4 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1598887142487-3c854d51eabb_ymkig7.jpg"]
provider_5 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1522337660859-02fbefca4702_tci1nr.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086519/Turna/photo-1559599076-9c61d8e1b77c_zddrcp.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1613086580/Turna/photo-1580618672591-eb180b1a973f_zjkqf7.jpg"]

# PROVIDERS CREATION

ro_prov = Provider.create!(category: "Peluqueria", name: "Pelu de RO", address: "Scalabrini Ortiz 2570", description: "Corte, tintura, manicura", rating: 5 )
tom_prov = Provider.create!(category: "Peluqueria", name: "Pelu de TOM", address: "Juan B. Justo 3620", description: "Barba, corte, perfilado", rating: 4 )
joaco_prov = Provider.create!(category: "Peluqueria", name: "Pelu de JOACO", address: "Medrano 1596", description: "Corte, depilacion, alisados", rating: 3 )
guido_prov = Provider.create!(category: "Peluqueria", name: "Pelu de Guido", address: "Boedo 2566", description: "Tintura, depilacion, perfilado", rating: 5 )
camilo_prov = Provider.create!(category: "Peluqueria", name: "Pelu de Camilo", address: "Uriburu 693", description: "Barba, alisado, manicura", rating: 4 )

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