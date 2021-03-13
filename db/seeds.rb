require 'open-uri'

puts "Cleaning database.."

User.destroy_all
Provider.destroy_all
Service.destroy_all
Booking.destroy_all
puts "Creating database.."



# USERS
ro_user = User.new(name: "Rocio", last_name: "Picaza", password: "123456", email: "ropicaza@gmail.com")
tom_user = User.new(name: "Tomas", last_name: "Agnese", password: "123456", email: "tomagnese@gmail.com")
joaco_user = User.new(name: "Joaquin", last_name: "Casanova", password: "123456", email: "joacocasanova@gmail.com")
camilo_user = User.new(name: "Camilo", last_name: "Gonzalez", password: "123456", email: "camilogonzalez@gmail.com")
nico_user = User.new(name: "Nicolas", last_name: "Kennedy", password: "123456", email: "nicokennedy@gmail.com")
admin_user = User.new(name: "admin", last_name: "admin", password: "123456", email: "admin@gmail.com", admin: true)

ro_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/Ro_bkfwby.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
joaco_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343080/Turna/joacoavatar_kkzo21.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
tom_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/tom_ps9ctl.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
camilo_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343080/Turna/camilo_betzts.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
nico_user.avatar.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1615638081/Turna/Nico_avatar_mx98nj.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
admin_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/Ro_bkfwby.jpg'), filename: 'default_avatar.png', content_type: 'image/png')

ro_user.save
joaco_user.save
tom_user.save
camilo_user.save
admin_user.save
nico_user.save

# IMAGES PROVIDER 1

provider_1 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614445737/Turna/photo-1598887142487-3c854d51eabb_hckysm.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445791/Turna/photo-1532710093739-9470acff878f_zqvuhd.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445823/Turna/photo-1590540179852-2110a54f813a_y8htbc.jpg"]
provider_2 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614443245/Turna/photo-1556755134-caec7f9924e6_c780lc.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445421/Turna/photo-1556755140-0f888d10a966_ctvqiz.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445420/Turna/photo-1556755134-a67aafdbd686_gaag3c.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614443245/Turna/photo-1556755140-2bf69cd7974a_m7oxyq.jpg"]
provider_3 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614445848/Turna/photo-1585747860715-2ba37e788b70_jsy5sq.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445871/Turna/photo-1519500528352-2d1460418d41_ik77oq.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445922/Turna/photo-1598887142728-f80b6e64821b_ieja3s.jpg"]
provider_4 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614445952/Turna/photo-1512690459411-b9245aed614b_d7tetr.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445950/Turna/photo-1512864084360-7c0c4d0a0845_zh5onp.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614445952/Turna/photo-1460748491143-2a97bbf7e4a8_yzmuq0.jpg"]
provider_5 = ["https://res.cloudinary.com/dmtio0viw/image/upload/v1614446018/Turna/photo-1569832947682-77c9164611df_q1xcn6.jpg", "https://res.cloudinary.com/dmtio0viw/image/upload/v1614446110/Turna/photo-1598887142717-f0289c743da0_mfacgd.jpg"]

# IMAGES PROVIDER 2

provider_6 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1614817277/Turna/Veterinaria/veterinaria_1_cttltu.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817277/Turna/Veterinaria/ba%C3%B1o_y_corte_g53xdf.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817434/Turna/Veterinaria/veterinaria_4_z3yyyd.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817695/Turna/Veterinaria/corte_raza_egboqj.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817278/Turna/Veterinaria/vet_1_ppm28d.jpg"]
provider_7 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1614817279/Turna/Veterinaria/vet5_b4v69w.png", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817277/Turna/Veterinaria/veterinaria_5_xi4rjf.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817277/Turna/Veterinaria/vet4_syv16s.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817277/Turna/Veterinaria/veterinaria_2_xhh90r.png", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817434/Turna/Veterinaria/ba%C3%B1o_szgrql.jpg"]
provider_8 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1614817967/Turna/Veterinaria/corte_raza_2_ql9snq.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818070/Turna/Veterinaria/bano_masc_2_kpteoz.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818206/Turna/Veterinaria/vacuna_2_nqb6e0.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818353/Turna/Veterinaria/vet_8_vty8rl.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818541/Turna/Veterinaria/vet3_fsq4t3.jpg"]
provider_9 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1614817968/Turna/Veterinaria/corte-pelo-perros-t_jeviaq.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818070/Turna/Veterinaria/bano_masc_usktiu.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818206/Turna/Veterinaria/vacuna1_axmgyg.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818353/Turna/Veterinaria/vet_7_a0twje.png", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818541/Turna/Veterinaria/vet4._q2nyoy.jpg"]
provider_10 = ["https://res.cloudinary.com/divzp8hs4/image/upload/v1614817968/Turna/Veterinaria/corte-pelo-pomerania_ukwnth.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818126/Turna/Veterinaria/bano_masc_3_n0ayrm.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614817277/Turna/Veterinaria/vet4_syv16s.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818353/Turna/Veterinaria/vet_6_ktpssq.jpg", "https://res.cloudinary.com/divzp8hs4/image/upload/v1614818541/Turna/Veterinaria/pelu2_mduiks.jpg"]

# PROVIDERS CREATION - 1

ro_prov = Provider.create!(category: "Barberia", name: "The Barbers", address: "Paraguay 5301, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Corte, Tintura, Barba", rating: 5, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true)
tom_prov = Provider.create!(category: "Barberia", name: "Sir Fausto", address: "Humboldt 2120, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Arreglo de Barba, Corte, Perfilado", rating: 4, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )
joaco_prov = Provider.create!(category: "Barberia", name: "The Barber Job", address: "Bonpland 1874, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "¡Corte, Barba y Color!", rating: 3, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )
guido_prov = Provider.create!(category: "Barberia", name: "Barber Truck", address: "Soler 5608, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Barbería Profesional", rating: 5, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )
camilo_prov = Provider.create!(category: "Barberia", name: "The Barber Shop", address: "Fitz Roy 1834, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Cortes, Areglo de Barba y Tintura", rating: 4, opening_time: '10:00', closing_time: '20:00', neighborhood: "Palermo, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )

# PROVIDERS CREATION - 2

ro_prov_vet = Provider.create!(category: "Veterinaria", name: "Puppies", address: "Espinosa 300, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "La mejor atención para tus mascotas", rating: 5, opening_time: '10:00', closing_time: '20:00', neighborhood: "Caballito, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true)
tom_prov_vet = Provider.create!(category: "Veterinaria", name: "Mascotitas", address: "Emilio Mitre 50, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Baño y peluqueria canina", rating: 4, opening_time: '10:00', closing_time: '20:00', neighborhood: "Caballito, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )
joaco_prov_vet = Provider.create!(category: "Veterinaria", name: "Faunatikos", address: "Aranguren 1044, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Vacunación anual y controles", rating: 3, opening_time: '10:00', closing_time: '20:00', neighborhood: "Caballito, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )
guido_prov_vet = Provider.create!(category: "Veterinaria", name: "CentroPet", address: "Directorio 2103, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Cuidamos a tus mejores amigos", rating: 5, opening_time: '10:00', closing_time: '20:00', neighborhood: "Caballito, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )
camilo_prov_vet = Provider.create!(category: "Veterinaria", name: "CatyCan", address: "Avellaneda 1200, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", description: "Consultas con especialistas", rating: 4, opening_time: '10:00', closing_time: '20:00', neighborhood: "Caballito, Autonomous City of Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina", status: true )

# SERVICES CREATION - PROV 1
service_one = Service.create!(title: "Corte y arreglo de barba", price: 900, min_duration: 30, provider: ro_prov)
service_two = Service.create!(title: "Corte de Pelo", price: 800, min_duration: 30, provider: ro_prov)
service_three = Service.create!(title: "Color/Decoloración", price: 1000, min_duration: 60, provider: ro_prov)

service_one_tom = Service.create!(title: "Corte y arreglo de barba", price: 800, min_duration: 30, provider: tom_prov)
service_two_tom = Service.create!(title: "Corte de Pelo", price: 700, min_duration: 30, provider: tom_prov)
service_three_tom = Service.create!(title: "Color/Decoloración", price: 1200, min_duration: 60, provider: tom_prov)

service_one_guido = Service.create!(title: "Corte y arreglo de barba", price: 650, min_duration: 30, provider: guido_prov)
service_two_guido = Service.create!(title: "Corte de Pelo", price: 560, min_duration: 30, provider: guido_prov)
service_three_guido = Service.create!(title: "Color/Decoloración", price: 1100, min_duration: 60, provider: guido_prov)

service_one_camilo = Service.create!(title: "Corte y arreglo de barba", price: 900, min_duration: 30, provider: camilo_prov)
service_two_camilo = Service.create!(title: "Corte de Pelo", price: 750, min_duration: 30, provider: camilo_prov)
service_three_camilo = Service.create!(title: "Color/Decoloración", price: 900, min_duration: 60, provider: camilo_prov)

service_one_joaco = Service.create!(title: "Corte y arreglo de barba", price: 700, min_duration: 30, provider: joaco_prov)
service_two_joaco = Service.create!(title: "Corte de Pelo", price: 500, min_duration: 30, provider: joaco_prov)
service_three_joaco = Service.create!(title: "Color/Decoloración", price: 1000, min_duration: 60, provider: joaco_prov)

# SERVICES CREATION - PROV 2

service_vet_ro_one = Service.create!(title: "Consulta", price: 1500, min_duration: 30, provider: ro_prov_vet)
service_vet_ro_two = Service.create!(title: "Baño y Cepillado", price: 1200, min_duration: 60, provider: ro_prov_vet)
service_vet_ro_three = Service.create!(title: "Vacunación anual", price: 800, min_duration: 30, provider: ro_prov_vet)

service_vet_tom_one = Service.create!(title: "Consulta", price: 800, min_duration: 30, provider: tom_prov_vet)
service_vet_tom_two = Service.create!(title: "Baño y Cepillado", price: 1000, min_duration: 30, provider: tom_prov_vet)
service_vet_tom_three = Service.create!(title: "Vacunación anual", price: 500, min_duration: 60, provider: tom_prov_vet)

service_vet_guido_one = Service.create!(title: "Consulta", price: 850, min_duration: 30, provider: guido_prov_vet)
service_vet_guido_two = Service.create!(title: "Baño y Cepillado", price: 1300, min_duration: 30, provider: guido_prov_vet)
service_vet_guido_three = Service.create!(title: "Vacunación anual", price: 450, min_duration: 60, provider: guido_prov_vet)

service_vet_camilo_one = Service.create!(title: "Consulta", price: 900, min_duration: 30, provider: camilo_prov_vet)
service_vet_camilo_two = Service.create!(title: "Baño y Cepillado", price: 1500, min_duration: 30, provider: camilo_prov_vet)
service_vet_camilo_three = Service.create!(title: "Vacunación anual", price: 800, min_duration: 60, provider: camilo_prov_vet)

service_vet_joaco_one = Service.create!(title: "Consulta", price: 600, min_duration: 30, provider: joaco_prov_vet)
service_vet_joaco_two = Service.create!(title: "Baño y Cepillado", price: 950, min_duration: 30, provider: joaco_prov_vet)
service_vet_joaco_three = Service.create!(title: "Vacunación anual", price: 500, min_duration: 60, provider: joaco_prov_vet)

# ICONS CREATION - PROV 1

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


# ICONS CREATION - PROV 2


service_vet_ro_one.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')
service_vet_ro_two.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')
service_vet_ro_three.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
service_vet_ro_one.save
service_vet_ro_two.save
service_vet_ro_three.save

service_vet_tom_one.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')
service_vet_tom_two.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')
service_vet_tom_three.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
service_vet_tom_one.save
service_vet_tom_two.save
service_vet_tom_three.save

service_vet_guido_one.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')
service_vet_guido_two.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')
service_vet_guido_three.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
service_vet_guido_one.save
service_vet_guido_two.save
service_vet_guido_three.save

service_vet_camilo_one.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')
service_vet_camilo_two.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')
service_vet_camilo_three.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
service_vet_camilo_one.save
service_vet_camilo_two.save
service_vet_camilo_three.save

service_vet_joaco_one.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')
service_vet_joaco_two.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')
service_vet_joaco_three.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
service_vet_joaco_one.save
service_vet_joaco_two.save
service_vet_joaco_three.save

# IMAGES ATTACHING - PROV 1
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


# IMAGES ATTACHING - PROV 2
provider_6.each do |img|
  provider_6_img = URI.open(img)
  ro_prov_vet.photos.attach(io: provider_6_img, filename: 'prov_img.png', content_type: 'image/png')
  ro_prov_vet.save
end

provider_7.each do |img|
  provider_7_img = URI.open(img)
  tom_prov_vet.photos.attach(io: provider_7_img, filename: 'prov_img.png', content_type: 'image/png')
  tom_prov_vet.save
end

provider_8.each do |img|
  provider_8_img = URI.open(img)
  joaco_prov_vet.photos.attach(io: provider_8_img, filename: 'prov_img.png', content_type: 'image/png')
  joaco_prov_vet.save
end

provider_9.each do |img|
  provider_9_img = URI.open(img)
  guido_prov_vet.photos.attach(io: provider_9_img, filename: 'prov_img.png', content_type: 'image/png')
  guido_prov_vet.save
end

provider_10.each do |img|
  provider_10_img = URI.open(img)
  camilo_prov_vet.photos.attach(io: provider_10_img, filename: 'prov_img.png', content_type: 'image/png')
  camilo_prov_vet.save
end


start_date = Date.today

# BOOKINGS - PROV 1

joaco_experience = Booking.create!(customer: joaco_user, service: service_one, start_datetime: start_date - 3.days + 16.hours, end_datetime: start_date - 3.days + 16.hours + 30.minutes, status: "accepted", payment_status:"pending")

nico_experience = Booking.create!(customer: nico_user, service: service_one, start_datetime: start_date + 2.days + 16.hours, end_datetime: start_date + 2.days + 16.hours + 30.minutes, status: "accepted", payment_status:"pending")

tom_experience2 = Booking.create!(customer: tom_user, service: service_one, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 16.hours + 30.minutes, status: "canceled", payment_status:"pending")

camilo_experience = Booking.create!(customer: camilo_user, service: service_one, start_datetime: start_date - 4.days + 16.hours, end_datetime: start_date - 4.days + 16.hours + 30.minutes, status: "accepted", payment_status:"pending")

# BOOKINGS - PROV 2

joaco_experience_vet = Booking.create!(customer: joaco_user, service: service_vet_ro_one, start_datetime: start_date - 3.days + 16.hours, end_datetime: start_date - 3.days + 16.hours + 30.minutes, status: "accepted", payment_status:"pending")

tom_experience_vet = Booking.create!(customer: tom_user, service: service_vet_ro_two, start_datetime: start_date + 2.days + 16.hours, end_datetime: start_date + 2.days + 16.hours + 30.minutes, status: "accepted", payment_status: "pending")

tom_experience_vet2 = Booking.create!(customer: tom_user, service: service_vet_ro_one, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 16.hours + 30.minutes, status: "completed", payment_status: "pending")

tom_experience_vet3 = Booking.create!(customer: tom_user, service: service_vet_ro_three, start_datetime: start_date - 2.days + 16.hours, end_datetime: start_date - 2.days + 17.hours, status: "canceled", payment_status: "pending")

camilo_experience_vet = Booking.create!(customer: camilo_user, service: service_vet_ro_one, start_datetime: start_date - 4.days + 16.hours, end_datetime: start_date - 4.days + 16.hours + 30.minutes, status: "accepted", payment_status: "pending")

# REVIEWS - PROV 1

Review.create!(user: joaco_user, booking: joaco_experience, content: "Excelente lugar! Fui atendido en tiempo y forma.", rating: 4)

Review.create!(user: camilo_user, booking: camilo_experience, content: "Buen lugar a nivel precio/calidad. Recomendado", rating: 3)

Review.create!(user: nico_user, booking: nico_experience, content: "Excelente Degrade!", rating: 5)

# REVIEWS - PROV 2

Review.create!(user: joaco_user, booking: joaco_experience_vet, content: "Muy buena veterinaria, lo mejor para mi mascota.", rating: 3)

Review.create!(user: camilo_user, booking: camilo_experience_vet, content: "Recomiendo la consulta con Walter, excelente veterinario!", rating: 5)

Review.create!(user: tom_user, booking: tom_experience_vet, content: "Atentos y siempre y cuidando a mis perros, los recomiendo!", rating: 5)

puts "Saving providers"

# SAVING BARBERIA PROVIDERS
ro_prov.reload.save!
tom_prov.reload.save!
joaco_prov.reload.save!
guido_prov.reload.save!
camilo_prov.reload.save!

# SAVING VET PROVIDERS
ro_prov_vet.reload.save!
tom_prov_vet.reload.save!
joaco_prov_vet.reload.save!
guido_prov_vet.reload.save!
camilo_prov_vet.reload.save!