require 'open-uri'

puts "Cleaning database.."

User.destroy_all
Provider.destroy_all
Service.destroy_all
Booking.destroy_all
puts "Creating database.."



# USERS
ro_user = User.new(name: "Rocio", last_name: "Picaza", password: "123456", email: "ropicaza@gmail.com")
tom_user = User.new(name: "Tomas", last_name: "Agnese", password: "123456", email: "tomagnese@gmail.com", admin: true)
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

provider_1 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614445737/Turna/photo-1598887142487-3c854d51eabb_hckysm.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445791/Turna/photo-1532710093739-9470acff878f_zqvuhd.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445823/Turna/photo-1590540179852-2110a54f813a_y8htbc.jpg"]
provider_2 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614443245/Turna/photo-1556755134-caec7f9924e6_c780lc.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445421/Turna/photo-1556755140-0f888d10a966_ctvqiz.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445420/Turna/photo-1556755134-a67aafdbd686_gaag3c.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614443245/Turna/photo-1556755140-2bf69cd7974a_m7oxyq.jpg"]
provider_3 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614445848/Turna/photo-1585747860715-2ba37e788b70_jsy5sq.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445871/Turna/photo-1519500528352-2d1460418d41_ik77oq.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445922/Turna/photo-1598887142728-f80b6e64821b_ieja3s.jpg"]
provider_4 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614445952/Turna/photo-1512690459411-b9245aed614b_d7tetr.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445950/Turna/photo-1512864084360-7c0c4d0a0845_zh5onp.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445952/Turna/photo-1460748491143-2a97bbf7e4a8_yzmuq0.jpg"]
provider_5 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614446018/Turna/photo-1569832947682-77c9164611df_q1xcn6.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614446110/Turna/photo-1598887142717-f0289c743da0_mfacgd.jpg"]

# PROVIDERS CREATION



ro_prov = Provider.create!(category: "Barberia", name: "The Barbers", address: "Paraguay 5301, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Corte, tintura, manicura", rating: 5, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina")
tom_prov = Provider.create!(category: "Barberia", name: "Sir Fausto", address: "Humboldt 2120, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Barba, corte, perfilado", rating: 4, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina
" )
joaco_prov = Provider.create!(category: "Barberia", name: "The Barber Job", address: "Bonpland 1874, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Corte, depilacion, alisados", rating: 3, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina
" )
guido_prov = Provider.create!(category: "Barberia", name: "Barber Truck", address: "Soler 5608, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Tintura, depilacion, perfilado", rating: 5, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina
" )
camilo_prov = Provider.create!(category: "Barberia", name: "The Barber Shop", address: "Fitz Roy 1834, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Barba, alisado, manicura", rating: 4, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina
" )

service_one = Service.create!(title: "Corte y arreglo de barba", price: 900, min_duration: 30, provider: ro_prov)
service_two = Service.create!(title: "Corte de Pelo", price: 800, min_duration: 30, provider: ro_prov)
service_three = Service.create!(title: "Color/Decoloracion", price: 1000, min_duration: 60, provider: ro_prov)

service_one_tom = Service.create!(title: "Corte y arreglo de barba", price: 800, min_duration: 30, provider: tom_prov)
service_two_tom = Service.create!(title: "Corte de Pelo", price: 700, min_duration: 30, provider: tom_prov)
service_three_tom = Service.create!(title: "Color/Decoloracion", price: 1200, min_duration: 60, provider: tom_prov)

service_one_guido = Service.create!(title: "Corte y arreglo de barba", price: 650, min_duration: 30, provider: guido_prov)
service_two_guido = Service.create!(title: "Corte de Pelo", price: 560, min_duration: 30, provider: guido_prov)
service_three_guido = Service.create!(title: "Color/Decoloracion", price: 1100, min_duration: 60, provider: guido_prov)

service_one_camilo = Service.create!(title: "Corte y arreglo de barba", price: 900, min_duration: 30, provider: camilo_prov)
service_two_camilo = Service.create!(title: "Corte de Pelo", price: 750, min_duration: 30, provider: camilo_prov)
service_three_camilo = Service.create!(title: "Color/Decoloracion", price: 900, min_duration: 60, provider: camilo_prov)

service_one_joaco = Service.create!(title: "Corte y arreglo de barba", price: 700, min_duration: 30, provider: joaco_prov)
service_two_joaco = Service.create!(title: "Corte de Pelo", price: 500, min_duration: 30, provider: joaco_prov)
service_three_joaco = Service.create!(title: "Color/Decoloracion", price: 1000, min_duration: 60, provider: joaco_prov)

service_one.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')

service_two.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')

service_three.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

service_one.save

service_two.save

service_three.save

service_one_tom.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')

service_two_tom.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')

service_three_tom.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

service_one_tom.save

service_two_tom.save

service_three_tom.save

service_one_guido.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')

service_two_guido.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')

service_three_guido.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

service_one_guido.save

service_two_guido.save

service_three_guido.save

service_one_camilo.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')

service_two_camilo.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')

service_three_camilo.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

service_one_camilo.save

service_two_camilo.save

service_three_camilo.save

service_one_joaco.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')

service_two_joaco.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')

service_three_joaco.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

service_one_joaco.save

service_two_joaco.save

service_three_joaco.save



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

joaco_experience = Booking.create!(customer: joaco_user, service: service_one, start_datetime: start_date - 3.days + 16.hours, end_datetime: start_date - 3.days + 16.hours + 45.minutes, status: "accepted")

tom_experience = Booking.create!(customer: tom_user, service: service_one, start_datetime: start_date + 2.days + 16.hours, end_datetime: start_date + 2.days + 16.hours + 45.minutes, status: "accepted")

tom_experience1 = Booking.create!(customer: tom_user, service: service_one, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 16.hours + 45.minutes, status: "completed")

tom_experience2 = Booking.create!(customer: tom_user, service: service_one, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 16.hours + 45.minutes, status: "canceled")


camilo_experience = Booking.create!(customer: camilo_user, service: service_one, start_datetime: start_date - 4.days + 16.hours, end_datetime: start_date - 4.days + 16.hours + 45.minutes, status: "accepted")


Review.create!(user: joaco_user, booking: joaco_experience, content: "Excelente lugar! Fui atendido en tiempo y forma.", rating: 4)


Review.create!(user: camilo_user, booking: camilo_experience, content: "Buen lugar a nivel precio/calidad. Recomendado", rating: 3)

Review.create!(user: tom_user, booking: tom_experience, content: "Excelente Degrade!", rating: 5)


def average_price(provider)
  precio = 0
  count = 0
  provider.services.each do |service|
    precio += service.price
    count += 1
  end
  precio / count
end

ro_prov.avg_price = average_price(ro_prov)
tom_prov.avg_price = average_price(tom_prov)
joaco_prov.avg_price = average_price(joaco_prov)
guido_prov.avg_price = average_price(guido_prov)
camilo_prov.avg_price = average_price(camilo_prov)

ro_prov.save
tom_prov.save
joaco_prov.save
guido_prov.save
camilo_prov.save