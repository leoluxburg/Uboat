# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AdminUser.create!(email: 'admin@uboat.com', password: '!r3nta80at!', password_confirmation: '!r3nta80at!') if Rails.env.development?
User.create!(email: "user@null.com", password: "perromax", admin: true)

naves = Category.create(title: "Naves")
servicios = Category.create(title: "Servicios")
tours = Category.create(title: "Tours")
tablas = Category.create(title: "Tablas")
accesorios = Category.create(title: "Accesorios")

Subcategory.create(name: "Yates", category: naves)
Subcategory.create(name: "Veleros", category: naves)
Subcategory.create(name: "Pangas", category: naves)
Subcategory.create(name: "JetSki", category: naves)

Subcategory.create(name: "Surf", category: tablas)
Subcategory.create(name: "SUP", category: tablas)
Subcategory.create(name: "Kayacs", category: tablas)

Subcategory.create(name: "Limpieza de Casco", category: servicios)
Subcategory.create(name: "Capitan", category: servicios)
Subcategory.create(name: "Mantenimiento", category: servicios)
Subcategory.create(name: "Mecanicos", category: servicios)
Subcategory.create(name: "Remolque", category: servicios)

Subcategory.create(name: "Excursiones", category: tours)
Subcategory.create(name: "Pesca", category: tours)

Subcategory.create(name: "Equipo de Pesca", category: accesorios)
Subcategory.create(name: "Equipo de Buceo", category: accesorios)

panama = Province.create(title: "Panamá")

balboa = District.create(name: 'Balboa', province: panama)
chepo = District.create(name: 'Chepo', province: panama)
chiman = District.create(name: 'Chiman', province: panama)
panamac = District.create(name: 'Panamá', province: panama)
sanmiguelito = District.create(name: 'San Miguelito', province: panama)
taboga = District.create(name: 'Taboga', province: panama)

sanmiguel = State.create(name: 'San Miguel', district: balboa)
laboca = Sector.create(name: 'La Boca', state: sanmiguel)
puertobalboa = Bay.create(name: 'Puerto Balboa', sector: laboca)

colon = Province.create(title: "Colón")
chagres = District.create(name: 'Chagres', province: colon)
colonc = District.create(name: 'Colón', province: colon)
donoso = District.create(name: 'Miguel de la Borda', province: colon)
potobelo = District.create(name: 'Portobelo', province: colon)
santaisabel = District.create(name: 'Santa Isabel', province: colon)
palmasbellas = State.create(name: 'Palmas Bellas', district: chagres)
nuevochagres = Sector.create(name: 'Nuevo Chagres', state: palmasbellas)
puertochagres = Bay.create(name: 'Puerto Chagres', sector: nuevochagres)

Province.create(title: "Bocas del Toro")
Province.create(title: "Coclé")
Province.create(title: "Chiriqui")
Province.create(title: "Darién")
Province.create(title: "Herrera")
Province.create(title: "Los Santos")
Province.create(title: "Panamá")
Province.create(title: "Veraguas")
Province.create(title: "Panamá Oeste")
Province.create(title: "Embera")
Province.create(title: "Guna Yala")
