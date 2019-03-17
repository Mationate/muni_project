
# USERS

User.destroy_all
10.times do |i|
    User.create(
    name: Faker::Name.name,
    email: "usuario@#{i+1}.com",
    password: 123456
  )
end
users = User.all

# MUNICIPALITIES

Municipality.destroy_all
Municipality.create(
  name: 'Municipalidad de Recoleta',
  email: 'contacto@recoleta.com',
  password: 123456
)
Municipality.create(
  name: 'Municipalidad de Providencia',
  email: 'contacto@providencia.com',
  password: 123456
)
Municipality.create(
  name: 'Municipalidad de Ñuñoa',
  email: 'contacto@ñuñoa.com',
  password: 123456
)

recoleta = Municipality.find_by name: 'Municipalidad de Recoleta'
providencia = Municipality.find_by name: 'Municipalidad de Providencia'
ñuñoa = Municipality.find_by name: 'Municipalidad de Ñuñoa'

Proyect.destroy_all

# PROYECTS
Proyect.create(
  title: 'Implementación semáforo',
  description: 'A causa de accidentes',
  budget: '1500000',
  address: 'Miguel claro 1074, Providencia, Santiago',
  start_date: Date.parse("15/04/2019"),
  finish_date: Date.parse("15/05/2019"),
  municipality: providencia
 )
Proyect.create(
  title: 'arreglo de ciclovia',
  description: 'mantención programada',
  budget: '2100000',
  address: 'Antonio Varas 1201, Providencia, Santiago',
  start_date: Date.parse('05/04/2019'),
  finish_date: Date.parse('20/05/2019'),
  municipality: providencia
 )
Proyect.create(
  title: 'arreglo de calle',
  description: 'daño por accidente vehicular',
  budget: '16500000',
  address: 'Eliodoro Yañez 1568, Providencia, Santiago',
  start_date: Date.parse('15/04/2019'),
  finish_date: Date.parse('22/06/2019'),
  municipality: providencia
 )
Proyect.create(
  title: 'arreglo de calle',
  description: 'daño por accidente vehicular',
  budget: '16500000',
  address: 'Eliodoro Yañez 1568, Providencia, Santiago',
  start_date: Date.parse('15/04/2019'),
  finish_date: Date.parse('22/06/2019'),
  municipality: providencia
 )
Proyect.create(
  title: 'reparación de vereda',
  description: 'arreglo vereda, colocación de pasto',
  budget: '3500000',
  address: 'Dario Urzua 1650, Providencia, Santiago',
  start_date: Date.parse('01/04/2019'),
  finish_date: Date.parse('10/04/2019'),
  municipality: providencia
 )
Proyect.create(
  title: 'Cambio Luminaria',
  description: 'Mantención programada',
  budget: '1250000',
  address: 'Monseñor Eyzaguirre 52, Ñuñoa, Santiago',
  start_date: Date.parse('11/04/2019'),
  finish_date: Date.parse('20/04/2019'),
  municipality: ñuñoa
 )
Proyect.create(
  title: 'Cambio luminaria',
  description: 'Mantención programada',
  budget: '1250000',
  address: 'Monseñor Eyzaguirre 152, Ñuñoa, Santiago',
  start_date: Date.parse('01/04/2019'),
  finish_date: Date.parse('10/04/2019'),
  municipality: ñuñoa
 )
Proyect.create(
  title: 'Reparación de grifo',
  description: 'Arreglo por accidente vehicular',
  budget: '2750000',
  address: 'Irarrázaval 1979, Ñuñoa, Santiago',
  start_date: Date.parse('03/04/2019'),
  finish_date: Date.parse('13/04/2019'),
  municipality: ñuñoa
 )
Proyect.create(
  title: 'Poda de árboles',
  description: 'Mantención programada',
  budget: '540000',
  address: 'Suárez Mujica 1916, Ñuñoa, Santiago',
  start_date: Date.parse('23/04/2019'),
  finish_date: Date.parse('23/04/2019'),
  municipality: ñuñoa
 )
Proyect.create(
  title: 'Instalación de Semáforo',
  description: 'Arreglo por accidente',
  budget: '1500000',
  address: 'La Paz 1013, Recoleta, Santiago',
  start_date: Date.parse('02/04/2019'),
  finish_date: Date.parse('10/04/2019'),
  municipality: recoleta
 )
Proyect.create(
  title: 'reparación de vereda',
  description: 'arreglo vereda, colocación de pasto',
  budget: '1500000',
  address: 'Av. Valdivieso 269, Recoleta, Santiago',
  start_date: Date.parse('03/04/2019'),
  finish_date: Date.parse('07/04/2019'),
  municipality: recoleta
 )
Proyect.create(
  title: 'Cruce de Peatones',
  description: 'Construcción de cruce peatonal',
  budget: '2534000',
  address: 'María Graham 360, Recoleta, Santiago',
  start_date: Date.parse('05/05/2019'),
  finish_date: Date.parse('30/05/2019'),
  municipality: recoleta
 )
Proyect.create(
  title: 'reparación de vereda',
  description: 'arreglo vereda, colocación de pasto',
  budget: '1230000',
  address: 'Av. Perú 1475, Recoleta, Santiago',
  start_date: Date.parse('12/04/2019'),
  finish_date: Date.parse('22/04/2019'),
  municipality: recoleta
 )
Proyect.create(
  title: 'reparación de vereda',
  description: 'arreglo vereda, colocación de pasto',
  budget: '1500000',
  address: 'Av. Recoleta 1155, Recoleta, Santiago',
  start_date: Date.parse('23/04/2019'),
  finish_date: Date.parse('30/04/2019'),
  municipality: recoleta
)

proyects = Proyect.all

# FEEDBACKS

Feedback.destroy_all
30.times do |i|
  Feedback.create(
    content: "Comentario de ejemplo número #{i+1}!",
    user: users.sample,
    proyect: proyects.sample
  )
end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
if Rails.env.development?
  AdminUser.destroy_all
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end