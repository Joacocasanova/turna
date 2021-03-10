module ProvidersHelper

  def check_first_service(provider)
    if provider.services.first
      if provider.services.first.title == "Corte y arreglo de barba"
        provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.first.title == "Corte de Pelo"
        provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.first.title == "Color/Decoloracion"
        provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

      elsif provider.services.first.title == "Consulta"
        provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')

      elsif provider.services.first.title == "Baño y Cepillado"
        provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')

      elsif provider.services.first.title == "Vacunación anual"
        provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
      end
    end
  end

  def check_second_service(provider)
    if provider.services.second
      if provider.services.second.title == "Corte y arreglo de barba"
        provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.second.title == "Corte de Pelo"
        provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.second.title == "Color/Decoloracion"
        provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.second.title == "Consulta"
        provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')

      elsif provider.services.second.title == "Baño y Cepillado"
        provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')

      elsif provider.services.second.title == "Vacunación anual"
        provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
      end
    end
  end

  def check_third_service(provider)
    if provider.services.third
      if provider.services.third.title == "Corte y arreglo de barba"
        provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.third.title == "Corte de Pelo"
        provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif provider.services.third.title == "Color/Decoloracion"
        provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')

      elsif provider.services.third.title == "Consulta"
        provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_2_xpcjjy.jpg'), filename: 'consulta.jpg', content_type: 'image/jpg')

      elsif provider.services.third.title == "Baño y Cepillado"
        provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614902002/Turna/Veterinaria/vacunaRecurso_1_oxgnsc.jpg'), filename: 'corte.jpg', content_type: 'image/jpg')

      elsif provider.services.third.title == "Vacunación anual"
        provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/v1614901969/Turna/Veterinaria/vacunaRecurso_3_x6yxpp.jpg'), filename: 'vacuna.jpg', content_type: 'image/jpg')
      end
    end
  end
end
