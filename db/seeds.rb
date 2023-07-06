# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AdminUser.create!(email: 'admin@uboat.com', password: '!r3nta80at!', password_confirmation: '!r3nta80at!')
User.create!(email: "user@null.com", password: "th3nu11c0mp4ny", admin: true)

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

# Provinces
panama = Province.create(title: "Panamá")

# Districts in Panama
balboa = District.create(name: 'Balboa', province: panama)
chepo = District.create(name: 'Chepo', province: panama)
chiman = District.create(name: 'Chiman', province: panama)
panamac = District.create(name: 'Panamá', province: panama)
sanmiguelito = District.create(name: 'San Miguelito', province: panama)
taboga = District.create(name: 'Taboga', province: panama)

# States in Balboa District
sanmiguel = State.create(name: 'San Miguel', district: balboa)
la_ensenada = State.create(name: 'La Ensenada', district: balboa)
la_esmeralda = State.create(name: 'La Esmeralda', district: balboa)
la_guinea = State.create(name: 'La Guinea', district: balboa)
pedro = State.create(name: 'Pedro González', district: balboa)
saboga = State.create(name: 'Saboga', district: balboa)

# States in Chepo District
chepo_state = State.create(name: 'Chepo', district: chepo)
canita = State.create(name: 'Cañita', district: chepo)
chepillo = State.create(name: 'Chepillo', district: chepo)
el_llano = State.create(name: 'El Llano', district: chepo)
las_margaritas = State.create(name: 'Las Margaritas', district: chepo)
santa_cruz = State.create(name: 'Santa Cruz de Chinina', district: chepo)
torti = State.create(name: 'Tortí', district: chepo)
madugandi = State.create(name: 'Madugandí', district: chepo)

# States in Chiman District
chiman_state = State.create(name: 'Chimán', district: chiman)
brujas = State.create(name: 'Brujas', district: chiman)
gonzalo_vasquez = State.create(name: 'Gonzalo Vásquez', district: chiman)
pasiga = State.create(name: 'Pásiga', district: chiman)
union_santena = State.create(name: 'Unión Santeña', district: chiman)

# States in Panamá District
_24_de_diciembre = State.create(name: '24 de Diciembre', district: panamac)
alcalde_diaz = State.create(name: 'Alcalde Díaz', district: panamac)
ancon = State.create(name: 'Ancón', district: panamac)
betania = State.create(name: 'Betania', district: panamac)
bella_vista = State.create(name: 'Bella Vista', district: panamac)
calidonia = State.create(name: 'Calidonia', district: panamac)
caimitillo = State.create(name: 'Caimitillo', district: panamac)
chilibre = State.create(name: 'Chilibre', district: panamac)
don_bosco = State.create(name: 'Don Bosco', district: panamac)
el_chorrillo = State.create(name: 'El Chorrillo', district: panamac)
curundu = State.create(name: 'Curundú', district: panamac)
ernesto_cordoba_campos = State.create(name: 'Ernesto Córdoba Campos', district: panamac)
juan_diaz = State.create(name: 'Juan Díaz', district: panamac)
las_cumbres = State.create(name: 'Las Cumbres', district: panamac)
las_garzas = State.create(name: 'Las Garzas', district: panamac)
las_mananitas = State.create(name: 'Las Mañanitas', district: panamac)
pacora = State.create(name: 'Pacora', district: panamac)
parque_lefevre = State.create(name: 'Parque Lefevre', district: panamac)
pedregal = State.create(name: 'Pedregal', district: panamac)
pueblo_nuevo = State.create(name: 'Pueblo Nuevo', district: panamac)
rio_abajo = State.create(name: 'Río Abajo', district: panamac)
san_felipe = State.create(name: 'San Felipe', district: panamac)
san_francisco = State.create(name: 'San Francisco', district: panamac)
san_martin = State.create(name: 'San Martín', district: panamac)
santa_ana = State.create(name: 'Santa Ana', district: panamac)
tocumen = State.create(name: 'Tocumen', district: panamac)

# States in San Miguelito District
amelia_denis_de_icaza = State.create(name: 'Amelia Denis De Icaza', district: sanmiguelito)
belisario_porras = State.create(name: 'Belisario Porras', district: sanmiguelito)
jose_domingo_espinar = State.create(name: 'José Domingo Espinar', district: sanmiguelito)
mateo_iturralde = State.create(name: 'Mateo Iturralde', district: sanmiguelito)
victoriano_lorenzo = State.create(name: 'Victoriano Lorenzo', district: sanmiguelito)
arnulfo_arias = State.create(name: 'Arnulfo Arias', district: sanmiguelito)
belisario_frias = State.create(name: 'Belisario Frías', district: sanmiguelito)
omar_torrijos = State.create(name: 'Omar Torrijos', district: sanmiguelito)
rufina_alfaro = State.create(name: 'Rufina Alfaro', district: sanmiguelito)

# States in Taboga District
taboga_state = State.create(name: 'Taboga', district: taboga)
otoque_occidente = State.create(name: 'Otoque Occidente', district: taboga)
otoque_oriente = State.create(name: 'Otoque Oriente', district: taboga)

laboca = Sector.create(name: 'La Boca', state: sanmiguel)
puertobalboa = Bay.create(name: 'Puerto Balboa', sector: laboca)

# Darién Province
darien = Province.create(title: "Darién")

# Districts
cabecera_darien = District.create(name: 'Cabecera', province: darien)
pinogana = District.create(name: 'Pinogana', province: darien)
santa_fe = District.create(name: 'Santa Fe', province: darien)

# Subdivisions (States) for Cabecera
State.create(name: 'La Palma', district: cabecera_darien)
State.create(name: 'Camoganti', district: cabecera_darien)
State.create(name: 'Chepigana', district: cabecera_darien)
State.create(name: 'Garachiné', district: cabecera_darien)
State.create(name: 'Jaqué', district: cabecera_darien)
State.create(name: 'Puerto Piña', district: cabecera_darien)
State.create(name: 'Sambú', district: cabecera_darien)
State.create(name: 'Setegantí', district: cabecera_darien)
State.create(name: 'Taimatí', district: cabecera_darien)
State.create(name: 'Tucutí', district: cabecera_darien)

# Subdivisions (States) for Pinogana
State.create(name: 'El Real de Santa María', district: pinogana)
State.create(name: 'Boca de Cupe', district: pinogana)
State.create(name: 'Paya', district: pinogana)
State.create(name: 'Pinogana', district: pinogana)
State.create(name: 'Púcuro', district: pinogana)
State.create(name: 'Yape', district: pinogana)
State.create(name: 'Yaviza', district: pinogana)
State.create(name: 'Metetí', district: pinogana)

# Subdivisions (States) for Santa Fe
State.create(name: 'Agua Fría', district: santa_fe)
State.create(name: 'Cucunatí', district: santa_fe)
State.create(name: 'Río Congo', district: santa_fe)
State.create(name: 'Río Congo Arriba', district: santa_fe)
State.create(name: 'Río Iglesias', district: santa_fe)
State.create(name: 'Santa Fe', district: santa_fe)
State.create(name: 'Zapallal', district: santa_fe)

# Bocas del Toro Province
bocas_del_toro = Province.create(title: "Bocas del Toro")

# Districts
almirante = District.create(name: 'Almirante', province: bocas_del_toro)
bocas_del_toro_district = District.create(name: 'Bocas del Toro', province: bocas_del_toro)
changuinola = District.create(name: 'Changuinola', province: bocas_del_toro)
chiriqui_grande = District.create(name: 'Chiriquí Grande', province: bocas_del_toro)

# Subdivisions (States) for Almirante District
State.create(name: 'Puerto Almirante', district: almirante)
State.create(name: 'Barriada Guaymí', district: almirante)
State.create(name: 'Barrio Francés', district: almirante)
State.create(name: 'Nance de Risco', district: almirante)
State.create(name: 'Valle del Risco', district: almirante)
State.create(name: 'Valle de Aguas Arriba', district: almirante)

# Subdivisions (States) for Bocas del Toro District
State.create(name: 'Bocas del Toro', district: bocas_del_toro_district)
State.create(name: 'Bastimentos', district: bocas_del_toro_district)
State.create(name: 'Cauchero', district: bocas_del_toro_district)
State.create(name: 'Punta Laurel', district: bocas_del_toro_district)
State.create(name: 'Tierra Oscura', district: bocas_del_toro_district)

# Subdivisions (States) for Changuinola District
State.create(name: 'Changuinola', district: changuinola)
State.create(name: 'Barriada 4 de Abril', district: changuinola)
State.create(name: 'Cochigro', district: changuinola)
State.create(name: 'El Empalme', district: changuinola)
State.create(name: 'El Silencio', district: changuinola)
State.create(name: 'Finca 30', district: changuinola)
State.create(name: 'Finca 6', district: changuinola)
State.create(name: 'Finca 60', district: changuinola)
State.create(name: 'Guabito', district: changuinola)
State.create(name: 'La Gloria', district: changuinola)
State.create(name: 'Las Delicias', district: changuinola)
State.create(name: 'Las Tablas', district: changuinola)
State.create(name: 'Teribe', district: changuinola)

# Subdivisions (States) for Chiriquí Grande District
State.create(name: 'Chiriquí Grande', district: chiriqui_grande)
State.create(name: 'Bajo Cedro', district: chiriqui_grande)
State.create(name: 'Miramar', district: chiriqui_grande)
State.create(name: 'Punte Peña', district: chiriqui_grande)
State.create(name: 'Punta Robalo', district: chiriqui_grande)
State.create(name: 'Rambala', district: chiriqui_grande)

# Colón Province
colon = Province.create(title: "Colón")

# Districts
colon_district = District.create(name: 'Colón', province: colon)
chagres = District.create(name: 'Chagres', province: colon)
donoso = District.create(name: 'Donoso', province: colon)
omar_torrijos_herrera = District.create(name: 'Omar Torrijos Herrera', province: colon)
portobelo = District.create(name: 'Portobelo', province: colon)
santa_isabel = District.create(name: 'Santa Isabel', province: colon)

# Subdivisions (States) for Colón District
State.create(name: 'Barrio Norte', district: colon_district)
State.create(name: 'Barrio Sur', district: colon_district)
State.create(name: 'Buena Vista', district: colon_district)
State.create(name: 'Cativá', district: colon_district)
State.create(name: 'Ciricito', district: colon_district)
State.create(name: 'Sabanitas', district: colon_district)
State.create(name: 'Salamanca', district: colon_district)
State.create(name: 'Limón', district: colon_district)
State.create(name: 'Nueva Providencia', district: colon_district)
State.create(name: 'Puerto Pilón', district: colon_district)
State.create(name: 'Cristóbal', district: colon_district)
State.create(name: 'Escobal', district: colon_district)
State.create(name: 'San Juan', district: colon_district)
State.create(name: 'Santa Rosa', district: colon_district)

# Subdivisions (States) for Chagres District
State.create(name: 'Nuevo Chagres', district: chagres)
State.create(name: 'Achiote', district: chagres)
State.create(name: 'El Guabo', district: chagres)
State.create(name: 'La Encantada', district: chagres)
State.create(name: 'Palmas Bellas', district: chagres)
State.create(name: 'Piña', district: chagres)
State.create(name: 'Salud', district: chagres)

# Subdivisions (States) for Donoso District
State.create(name: 'Miguel de la Borda', district: donoso)
State.create(name: 'Coclé del Norte', district: donoso)
State.create(name: 'El Guásimo', district: donoso)
State.create(name: 'Gobea', district: donoso)
State.create(name: 'Río Indio', district: donoso)

# Subdivisions (States) for Omar Torrijos Herrera District
State.create(name: 'San José del General', district: omar_torrijos_herrera)
State.create(name: 'Nueva Esperanza', district: omar_torrijos_herrera)
State.create(name: 'San Juan de Turbe', district: omar_torrijos_herrera)

# Subdivisions (States) for Portobelo District
State.create(name: 'San Felipe de Portobelo', district: portobelo)
State.create(name: 'Cacique', district: portobelo)
State.create(name: 'Garrote', district: portobelo)
State.create(name: 'Isla Grande', district: portobelo)
State.create(name: 'María Chiquita', district: portobelo)

# Subdivisions (States) for Santa Isabel District
State.create(name: 'Palenque', district: santa_isabel)
State.create(name: 'Cuango', district: santa_isabel)
State.create(name: 'Miramar', district: santa_isabel)
State.create(name: 'Nombre de Dios', district: santa_isabel)
State.create(name: 'Palmira', district: santa_isabel)
State.create(name: 'Playa Chiquita', district: santa_isabel)
State.create(name: 'Santa Isabel', district: santa_isabel)
State.create(name: 'Viento Frío', district: santa_isabel)

# Coclé Province
cocle = Province.create(title: "Coclé")

# Districts
aguadulce = District.create(name: 'Aguadulce', province: cocle)
anton = District.create(name: 'Antón', province: cocle)
la_pintada = District.create(name: 'La Pintada', province: cocle)
nata = District.create(name: 'Natá', province: cocle)
ola = District.create(name: 'Olá', province: cocle)
penonome = District.create(name: 'Penonomé', province: cocle)

# Subdivisions (States) for Aguadulce District
State.create(name: 'San Juan Bautista de Aguadulce', district: aguadulce)
State.create(name: 'El Cristo', district: aguadulce)
State.create(name: 'El Roble', district: aguadulce)
State.create(name: 'Pocrí', district: aguadulce)
State.create(name: 'Barrios Unidos', district: aguadulce)

# Subdivisions (States) for Antón District
State.create(name: 'Antón', district: anton)
State.create(name: 'Cabuya', district: anton)
State.create(name: 'El Chirú', district: anton)
State.create(name: 'El Retiro', district: anton)
State.create(name: 'El Valle', district: anton)
State.create(name: 'Juan Díaz', district: anton)
State.create(name: 'Río Hato', district: anton)
State.create(name: 'San Juan de Dios', district: anton)
State.create(name: 'Santa Rita', district: anton)
State.create(name: 'Caballero', district: anton)

# Subdivisions (States) for La Pintada District
State.create(name: 'La Pintada', district: la_pintada)
State.create(name: 'El Harino', district: la_pintada)
State.create(name: 'El Potrero', district: la_pintada)
State.create(name: 'Llano Grande', district: la_pintada)
State.create(name: 'Piedras Gordas', district: la_pintada)
State.create(name: 'Las Lomas', district: la_pintada)
State.create(name: 'Llano Norte', district: la_pintada)

# Subdivisions (States) for Natá District
State.create(name: 'Natá de los Caballeros', district: nata)
State.create(name: 'Capellanía', district: nata)
State.create(name: 'El Caño', district: nata)
State.create(name: 'Guzmán', district: nata)
State.create(name: 'Las Huacas', district: nata)
State.create(name: 'Toza', district: nata)

# Subdivisions (States) for Olá District
State.create(name: 'Olá', district: ola)
State.create(name: 'El Copé', district: ola)
State.create(name: 'El Palmar', district: ola)
State.create(name: 'El Picacho', district: ola)
State.create(name: 'La Pava', district: ola)

# Subdivisions (States) for Penonomé District
State.create(name: 'Penonomé', district: penonome)
State.create(name: 'Cañaveral', district: penonome)
State.create(name: 'Coclé', district: penonome)
State.create(name: 'Chiguirí Arriba', district: penonome)
State.create(name: 'El Coco', district: penonome)
State.create(name: 'Pajonal', district: penonome)
State.create(name: 'Río Grande', district: penonome)
State.create(name: 'Río Indio', district: penonome)
State.create(name: 'Toabré', district: penonome)
State.create(name: 'Tulú', district: penonome)
State.create(name: 'El Valle de San Miguel', district: penonome)
State.create(name: 'Vista Hermosa', district: penonome)
State.create(name: 'Los Uveros', district: penonome)
State.create(name: 'El Silencio', district: penonome)

# Chiriquí Province
chiriqui = Province.create(title: "Chiriquí")

# Districts
alanje = District.create(name: 'Alanje', province: chiriqui)
baru = District.create(name: 'Barú', province: chiriqui)
boqueron = District.create(name: 'Boquerón', province: chiriqui)
boquete = District.create(name: 'Boquete', province: chiriqui)
bugaba = District.create(name: 'Bugaba', province: chiriqui)
david = District.create(name: 'David', province: chiriqui)
dolega = District.create(name: 'Dolega', province: chiriqui)
gualaca = District.create(name: 'Gualaca', province: chiriqui)
remedios = District.create(name: 'Remedios', province: chiriqui)
renacimiento = District.create(name: 'Renacimiento', province: chiriqui)
san_felix = District.create(name: 'San Félix', province: chiriqui)
san_lorenzo = District.create(name: 'San Lorenzo', province: chiriqui)
tierras_altas = District.create(name: 'Tierras Altas', province: chiriqui)
tole = District.create(name: 'Tolé', province: chiriqui)

# Subdivisions (States) for Alanje District
State.create(name: 'Alanje', district: alanje)
State.create(name: 'Divalá', district: alanje)
State.create(name: 'El Tejar', district: alanje)
State.create(name: 'Guarumal', district: alanje)
State.create(name: 'Palo Grande', district: alanje)
State.create(name: 'Querévalo', district: alanje)
State.create(name: 'Santo Tomás', district: alanje)
State.create(name: 'Canta Gallo', district: alanje)
State.create(name: 'Nuevo México', district: alanje)

# Subdivisions (States) for Barú District
State.create(name: 'Puerto Armuelles', district: baru)
State.create(name: 'Limones', district: baru)
State.create(name: 'Progreso', district: baru)
State.create(name: 'Baco', district: baru)
State.create(name: 'Rodolfo Aguilar Delgado', district: baru)
State.create(name: 'El Palmar', district: baru)
State.create(name: 'Manaca', district: baru)

# Subdivisions (States) for Boquerón District
State.create(name: 'Boquerón', district: boqueron)
State.create(name: 'Bágala', district: boqueron)
State.create(name: 'Cordillera', district: boqueron)
State.create(name: 'Guabal', district: boqueron)
State.create(name: 'Guayabal', district: boqueron)
State.create(name: 'Paraíso', district: boqueron)
State.create(name: 'Pedregal', district: boqueron)
State.create(name: 'Tijeras', district: boqueron)

# Subdivisions (States) for Boquete District
State.create(name: 'Bajo Boquete', district: boquete)
State.create(name: 'Caldera', district: boquete)
State.create(name: 'Palmira', district: boquete)
State.create(name: 'Alto Boquete', district: boquete)
State.create(name: 'Jaramillo', district: boquete)
State.create(name: 'Los Naranjos', district: boquete)

# Subdivisions (States) for Bugaba District
State.create(name: 'La Concepción', district: bugaba)
State.create(name: 'Aserrío de Gariché', district: bugaba)
State.create(name: 'Bugaba', district: bugaba)
State.create(name: 'Gómez', district: bugaba)
State.create(name: 'La Estrella', district: bugaba)
State.create(name: 'San Andrés', district: bugaba)
State.create(name: 'Santa Marta', district: bugaba)
State.create(name: 'Santa Rosa', district: bugaba)
State.create(name: 'Santo Domingo', district: bugaba)
State.create(name: 'Sortová', district: bugaba)
State.create(name: 'El Bongo', district: bugaba)
State.create(name: 'Solano', district: bugaba)
State.create(name: 'San Isidro', district: bugaba)

# Subdivisions (States) for David District
State.create(name: 'David', district: david)
State.create(name: 'Bijagual', district: david)
State.create(name: 'Cochea', district: david)
State.create(name: 'Chiriquí', district: david)
State.create(name: 'Guacá', district: david)
State.create(name: 'Las Lomas', district: david)
State.create(name: 'Pedregal', district: david)
State.create(name: 'San Carlos', district: david)
State.create(name: 'San Pablo Nuevo', district: david)
State.create(name: 'San Pablo Viejo', district: david)
State.create(name: 'David Este', district: david)
State.create(name: 'David Sur', district: david)

# Subdivisions (States) for Dolega District
State.create(name: 'Dolega', district: dolega)
State.create(name: 'Dos Ríos', district: dolega)
State.create(name: 'Los Anastacios', district: dolega)
State.create(name: 'Potrerillos', district: dolega)
State.create(name: 'Potrerillos Abajo', district: dolega)
State.create(name: 'Rovira', district: dolega)
State.create(name: 'Tinajas', district: dolega)
State.create(name: 'Los Algarrobos', district: dolega)

# Subdivisions (States) for Gualaca District
State.create(name: 'Gualaca', district: gualaca)
State.create(name: 'Hornito', district: gualaca)
State.create(name: 'Los Ángeles', district: gualaca)
State.create(name: 'Paja de Sombrero', district: gualaca)
State.create(name: 'Rincón', district: gualaca)

# Subdivisions (States) for Remedios District
State.create(name: 'Remedios', district: remedios)
State.create(name: 'El Nancito', district: remedios)
State.create(name: 'El Porvenir', district: remedios)
State.create(name: 'El Puerto', district: remedios)
State.create(name: 'Santa Lucía', district: remedios)

# Subdivisions (States) for Renacimiento District
State.create(name: 'Río Sereno', district: renacimiento)
State.create(name: 'Breñón', district: renacimiento)
State.create(name: 'Cañas Gordas', district: renacimiento)
State.create(name: 'Monte Lirio', district: renacimiento)
State.create(name: 'Plaza de Caisán', district: renacimiento)
State.create(name: 'Santa Cruz', district: renacimiento)
State.create(name: 'Dominical', district: renacimiento)
State.create(name: 'Santa Clara', district: renacimiento)

# Subdivisions (States) for San Félix District
State.create(name: 'Las Lajas', district: san_felix)
State.create(name: 'Juay', district: san_felix)
State.create(name: 'San Félix', district: san_felix)
State.create(name: 'Lajas Adentro', district: san_felix)
State.create(name: 'Santa Cruz', district: san_felix)

# Subdivisions (States) for San Lorenzo District
State.create(name: 'Horconcitos', district: san_lorenzo)
State.create(name: 'Boca Chica', district: san_lorenzo)
State.create(name: 'Boca del Monte', district: san_lorenzo)
State.create(name: 'San Juan', district: san_lorenzo)
State.create(name: 'San Lorenzo', district: san_lorenzo)

# Subdivisions (States) for Tierras Altas District
State.create(name: 'Volcán', district: tierras_altas)
State.create(name: 'Cerro Punta', district: tierras_altas)
State.create(name: 'Cuesta de Piedra', district: tierras_altas)
State.create(name: 'Nueva California', district: tierras_altas)
State.create(name: 'Paso Ancho', district: tierras_altas)

# Subdivisions (States) for Tolé District
State.create(name: 'Tolé', district: tole)
State.create(name: 'Cerro Viejo', district: tole)
State.create(name: 'Potrero de Caña', district: tole)
State.create(name: 'Quebrada de Piedra', district: tole)
State.create(name: 'Bella Vista', district: tole)
State.create(name: 'El Cristo', district: tole)
State.create(name: 'Lajas de Tolé', district: tole)
State.create(name: 'Justo Fidel Palacios', district: tole)
State.create(name: 'Veladero', district: tole)

# Province: Herrera
herrera = Province.create(title: 'Herrera')

# District: Chitré
chitre = District.create(name: 'Chitré', province: herrera)
State.create(name: 'Chitré', district: chitre)
State.create(name: 'La Arena', district: chitre)
State.create(name: 'San Miguel de Monagrillo', district: chitre)
State.create(name: 'Llano Bonito', district: chitre)
State.create(name: 'San Juan Bautista', district: chitre)

# District: Las Minas
las_minas = District.create(name: 'Las Minas', province: herrera)
State.create(name: 'Las Minas', district: las_minas)
State.create(name: 'Chepo', district: las_minas)
State.create(name: 'Chumical', district: las_minas)
State.create(name: 'El Toro', district: las_minas)
State.create(name: 'Leones', district: las_minas)
State.create(name: 'Quebrada del Rosario', district: las_minas)
State.create(name: 'Quebrada El Ciprián', district: las_minas)

# District: Los Pozos
los_pozos = District.create(name: 'Los Pozos', province: herrera)
State.create(name: 'Los Pozos', district: los_pozos)
State.create(name: 'El Capurí', district: los_pozos)
State.create(name: 'El Calabacito', district: los_pozos)
State.create(name: 'El Cedro', district: los_pozos)
State.create(name: 'La Arena', district: los_pozos)
State.create(name: 'La Pitaloza', district: los_pozos)
State.create(name: 'Los Cerritos', district: los_pozos)
State.create(name: 'Los Cerros de Paja', district: los_pozos)
State.create(name: 'Las Llanas', district: los_pozos)

# District: Ocú
ocu = District.create(name: 'Ocú', province: herrera)
State.create(name: 'San Sebastián de Ocú', district: ocu)
State.create(name: 'Cerro Largo', district: ocu)
State.create(name: 'Los Llanos', district: ocu)
State.create(name: 'Llano Grande', district: ocu)
State.create(name: 'Peñas Chatas', district: ocu)
State.create(name: 'El Tijera', district: ocu)
State.create(name: 'Menchaca', district: ocu)
State.create(name: 'Entradero del Castillo', district: ocu)

# District: Parita
parita = District.create(name: 'Parita', province: herrera)
State.create(name: 'Parita', district: parita)
State.create(name: 'Cabuya', district: parita)
State.create(name: 'Los Castillos', district: parita)
State.create(name: 'Llano de la Cruz', district: parita)
State.create(name: 'París', district: parita)
State.create(name: 'Portobelillo', district: parita)
State.create(name: 'Potuga', district: parita)

# District: Pesé
pese = District.create(name: 'Pesé', province: herrera)
State.create(name: 'Pesé', district: pese)
State.create(name: 'Las Cabras', district: pese)
State.create(name: 'El Pájaro', district: pese)
State.create(name: 'El Barrero', district: pese)
State.create(name: 'El Pedregoso', district: pese)
State.create(name: 'El Ciruelo', district: pese)
State.create(name: 'Sabanagrande', district: pese)
State.create(name: 'Rincón Hondo', district: pese)

# District: Santa María
santa_maria = District.create(name: 'Santa María', province: herrera)
State.create(name: 'Santa María', district: santa_maria)
State.create(name: 'Chupampa', district: santa_maria)
State.create(name: 'El Rincón', district: santa_maria)
State.create(name: 'El Limón', district: santa_maria)
State.create(name: 'Los Canelos', district: santa_maria)

# Province: Los Santos
los_santos = Province.create(title: 'Los Santos')

# District: Guararé
guarare = District.create(name: 'Guararé', province: los_santos)
State.create(name: 'Guararé', district: guarare)
State.create(name: 'El Espinal', district: guarare)
State.create(name: 'El Macano', district: guarare)
State.create(name: 'Guararé Arriba', district: guarare)
State.create(name: 'La Enea', district: guarare)
State.create(name: 'La Pasera', district: guarare)
State.create(name: 'Las Trancas', district: guarare)
State.create(name: 'Llano Abajo', district: guarare)
State.create(name: 'El Hato', district: guarare)
State.create(name: 'Perales', district: guarare)

# District: Las Tablas
las_tablas = District.create(name: 'Las Tablas', province: los_santos)
State.create(name: 'Las Tablas', district: las_tablas)
State.create(name: 'Bajo Corral', district: las_tablas)
State.create(name: 'Bayano', district: las_tablas)
State.create(name: 'El Carate', district: las_tablas)
State.create(name: 'El Cocal', district: las_tablas)
State.create(name: 'El Manantial', district: las_tablas)
State.create(name: 'El Muñoz', district: las_tablas)
State.create(name: 'El Pedregoso', district: las_tablas)
State.create(name: 'El Sesteadero', district: las_tablas)
State.create(name: 'La Laja', district: las_tablas)
State.create(name: 'La Miel', district: las_tablas)
State.create(name: 'La Palma', district: las_tablas)
State.create(name: 'La Tiza', district: las_tablas)
State.create(name: 'Las Palmitas', district: las_tablas)
State.create(name: 'Las Tablas Abajo', district: las_tablas)
State.create(name: 'Nuario', district: las_tablas)
State.create(name: 'Palmira', district: las_tablas)
State.create(name: 'Peña Blanca', district: las_tablas)
State.create(name: 'Río Hondo', district: las_tablas)
State.create(name: 'San José', district: las_tablas)
State.create(name: 'San Miguel', district: las_tablas)
State.create(name: 'Santo Domingo', district: las_tablas)
State.create(name: 'Valle Rico', district: las_tablas)
State.create(name: 'Vallerriquito', district: las_tablas)

# District: Los Santos
los_santos_district = District.create(name: 'Los Santos', province: los_santos)
State.create(name: 'La Villa de Los Santos', district: los_santos_district)
State.create(name: 'El Ejido', district: los_santos_district)
State.create(name: 'El Guásimo', district: los_santos_district)
State.create(name: 'La Colorada', district: los_santos_district)
State.create(name: 'La Espigadilla', district: los_santos_district)
State.create(name: 'Las Cruces', district: los_santos_district)
State.create(name: 'Las Guabas', district: los_santos_district)
State.create(name: 'Los Ángeles', district: los_santos_district)
State.create(name: 'Los Olivos', district: los_santos_district)
State.create(name: 'Llano Largo', district: los_santos_district)
State.create(name: 'Sabanagrande', district: los_santos_district)
State.create(name: 'Santa Ana', district: los_santos_district)
State.create(name: 'Tres Quebradas', district: los_santos_district)
State.create(name: 'Villa Lourdes', district: los_santos_district)
State.create(name: 'Agua Buena', district: los_santos_district)

# District: Macaracas
macaracas = District.create(name: 'Macaracas', province: los_santos)
State.create(name: 'Macaracas', district: macaracas)
State.create(name: 'Bahía Honda', district: macaracas)
State.create(name: 'Bajos de Güera', district: macaracas)
State.create(name: 'Corozal', district: macaracas)
State.create(name: 'Chupá', district: macaracas)
State.create(name: 'El Cedro', district: macaracas)
State.create(name: 'Espino Amarillo', district: macaracas)
State.create(name: 'La Mesa', district: macaracas)
State.create(name: 'Llano de Piedras', district: macaracas)
State.create(name: 'Las Palmas', district: macaracas)
State.create(name: 'Mogollón', district: macaracas)

# District: Pedasí
pedasi = District.create(name: 'Pedasí', province: los_santos)
State.create(name: 'Pedasí', district: pedasi)
State.create(name: 'Los Asientos', district: pedasi)
State.create(name: 'Mariabé', district: pedasi)
State.create(name: 'Purio', district: pedasi)
State.create(name: 'Oria Arriba', district: pedasi)

# District: Pocrí
pocri = District.create(name: 'Pocrí', province: los_santos)
State.create(name: 'Pocrí', district: pocri)
State.create(name: 'El Cañafístulo', district: pocri)
State.create(name: 'Lajamina', district: pocri)
State.create(name: 'Paraíso', district: pocri)
State.create(name: 'Paritilla', district: pocri)

# District: Tonosí
tonosi = District.create(name: 'Tonosí', province: los_santos)
State.create(name: 'Tonosí', district: tonosi)
State.create(name: 'Altos de Güera', district: tonosi)
State.create(name: 'Cañas', district: tonosi)
State.create(name: 'El Bebedero', district: tonosi)
State.create(name: 'El Cacao', district: tonosi)
State.create(name: 'El Cortezo', district: tonosi)
State.create(name: 'Flores', district: tonosi)
State.create(name: 'Guánico', district: tonosi)
State.create(name: 'La Tronosa', district: tonosi)
State.create(name: 'Cambutal', district: tonosi)
State.create(name: 'Isla de Cañas', district: tonosi)
# Province: Veraguas

# District: Atalaya
veraguas = Province.create(title: 'Veraguas')
atalaya = District.create(name: 'Atalaya', province: veraguas)
State.create(name: 'Atalaya', district: atalaya)
State.create(name: 'El Barrito', district: atalaya)
State.create(name: 'La Montañuela', district: atalaya)
State.create(name: 'San Antonio', district: atalaya)
State.create(name: 'La Carrillo', district: atalaya)

# District: Calobre
calobre = District.create(name: 'Calobre', province: veraguas)
State.create(name: 'Calobre', district: calobre)
State.create(name: 'Barnizal', district: calobre)
State.create(name: 'Chitra', district: calobre)
State.create(name: 'El Cocla', district: calobre)
State.create(name: 'El Potrero', district: calobre)
State.create(name: 'La Laguna', district: calobre)
State.create(name: 'La Raya de Calobre', district: calobre)
State.create(name: 'La Tetilla', district: calobre)
State.create(name: 'La Yeguada', district: calobre)
State.create(name: 'Las Guías', district: calobre)
State.create(name: 'Monjarás', district: calobre)
State.create(name: 'San José', district: calobre)

# District: Cañazas
canazas = District.create(name: 'Cañazas', province: veraguas)
State.create(name: 'Cañazas', district: canazas)
State.create(name: 'Cerro de Plata', district: canazas)
State.create(name: 'Los Valles', district: canazas)
State.create(name: 'San Marcelo', district: canazas)
State.create(name: 'El Picador', district: canazas)
State.create(name: 'San José', district: canazas)
State.create(name: 'El Aromillo', district: canazas)
State.create(name: 'Las Cruces', district: canazas)

# District: La Mesa
la_mesa = District.create(name: 'La Mesa', province: veraguas)
State.create(name: 'La Mesa', district: la_mesa)
State.create(name: 'Bisvalles', district: la_mesa)
State.create(name: 'Boró', district: la_mesa)
State.create(name: 'Llano Grande', district: la_mesa)
State.create(name: 'San Bartolo', district: la_mesa)
State.create(name: 'Los Milagros', district: la_mesa)
State.create(name: 'El Higo', district: la_mesa)

# District: Las Palmas
las_palmas = District.create(name: 'Las Palmas', province: veraguas)
State.create(name: 'Las Palmas', district: las_palmas)
State.create(name: 'Cerro de Casa', district: las_palmas)
State.create(name: 'Corozal', district: las_palmas)
State.create(name: 'El María', district: las_palmas)
State.create(name: 'El Prado', district: las_palmas)
State.create(name: 'El Rincón', district: las_palmas)
State.create(name: 'Lolá', district: las_palmas)
State.create(name: 'Pixvae', district: las_palmas)
State.create(name: 'Puerto Vidal', district: las_palmas)
State.create(name: 'Zapotillo', district: las_palmas)
State.create(name: 'San Martín de Porres', district: las_palmas)
State.create(name: 'Viguí', district: las_palmas)
State.create(name: 'Manuel E. Amador Terrero', district: las_palmas)

# District: Mariato
mariato = District.create(name: 'Mariato', province: veraguas)
State.create(name: 'Mariato', district: mariato)
State.create(name: 'Arenas', district: mariato)
State.create(name: 'El Cacao', district: mariato)
State.create(name: 'Quebro', district: mariato)
State.create(name: 'Tebario', district: mariato)

# District: Montijo
montijo = District.create(name: 'Montijo', province: veraguas)
State.create(name: 'Montijo', district: montijo)
State.create(name: 'Gobernadora', district: montijo)
State.create(name: 'La Garceana', district: montijo)
State.create(name: 'Leones', district: montijo)
State.create(name: 'Pilón', district: montijo)
State.create(name: 'Cébaco', district: montijo)
State.create(name: 'Costa Hermosa', district: montijo)
State.create(name: 'Unión del Norte', district: montijo)

# District: Río de Jesús
rio_de_jesus = District.create(name: 'Río de Jesús', province: veraguas)
State.create(name: 'Río de Jesús', district: rio_de_jesus)
State.create(name: 'Catorce de Noviembre', district: rio_de_jesus)
State.create(name: 'Las Huacas', district: rio_de_jesus)
State.create(name: 'Los Castillos', district: rio_de_jesus)
State.create(name: 'Utira', district: rio_de_jesus)

# District: San Francisco
san_francisco = District.create(name: 'San Francisco', province: veraguas)
State.create(name: 'San Francisco', district: san_francisco)
State.create(name: 'Corral Falso', district: san_francisco)
State.create(name: 'Los Hatillos', district: san_francisco)
State.create(name: 'Remance', district: san_francisco)
State.create(name: 'San Juan', district: san_francisco)
State.create(name: 'San José', district: san_francisco)

# District: Santa Fe
santa_fe = District.create(name: 'Santa Fe', province: veraguas)
State.create(name: 'Santa Fe', district: santa_fe)
State.create(name: 'Calovébora', district: santa_fe)
State.create(name: 'El Alto', district: santa_fe)
State.create(name: 'El Cuay', district: santa_fe)
State.create(name: 'El Pantano', district: santa_fe)
State.create(name: 'Gatuncito', district: santa_fe)
State.create(name: 'Río Luis', district: santa_fe)
State.create(name: 'Rubén Cantú', district: santa_fe)

# District: Santiago
santiago = District.create(name: 'Santiago', province: veraguas)
State.create(name: 'Santiago', district: santiago)
State.create(name: 'La Colorada', district: santiago)
State.create(name: 'La Peña', district: santiago)
State.create(name: 'La Raya de Santa María', district: santiago)
State.create(name: 'Ponuga', district: santiago)
State.create(name: 'San Pedro del Espino', district: santiago)
State.create(name: 'Canto del Llano', district: santiago)
State.create(name: 'Los Algarrobos', district: santiago)
State.create(name: 'Carlos Santana Ávila', district: santiago)
State.create(name: 'Edwin Fábrega', district: santiago)
State.create(name: 'San Martín de Porres', district: santiago)
State.create(name: 'Urracá', district: santiago)
State.create(name: 'Rodrigo Luque', district: santiago)
State.create(name: 'Santiago Este', district: santiago)
State.create(name: 'Santiago Sur', district: santiago)
State.create(name: 'Nuevo Santiago', district: santiago)

# District: Soná
sona = District.create(name: 'Soná', province: veraguas)
State.create(name: 'Soná', district: sona)
State.create(name: 'Bahía Honda', district: sona)
State.create(name: 'Calidonia', district: sona)
State.create(name: 'Cativé', district: sona)
State.create(name: 'El Marañón', district: sona)
State.create(name: 'Guarumal', district: sona)
State.create(name: 'La Soledad', district: sona)
State.create(name: 'Quebrada de Oro', district: sona)
State.create(name: 'Río Grande', district: sona)
State.create(name: 'Rodeo Viejo', district: sona)
State.create(name: 'Hicaco', district: sona)
State.create(name: 'La Trinchera', district: sona)
# Province: Panama Oeste
panama_oeste = Province.create(title: 'Panama Oeste')

# District: Arraiján
arraijan = District.create(name: 'Arraiján', province: panama_oeste)
State.create(name: 'Arraiján', district: arraijan)
State.create(name: 'Burunga', district: arraijan)
State.create(name: 'Cerro Silvestre', district: arraijan)
State.create(name: 'Juan Demóstenes Arosemena', district: arraijan)
State.create(name: 'Nuevo Emperador', district: arraijan)
State.create(name: 'Santa Clara', district: arraijan)
State.create(name: 'Veracruz', district: arraijan)
State.create(name: 'Vacamonte', district: arraijan)
State.create(name: 'Vista Alegre', district: arraijan)

# District: Capira
capira = District.create(name: 'Capira', province: panama_oeste)
State.create(name: 'Capira', district: capira)
State.create(name: 'Caimito', district: capira)
State.create(name: 'Campana', district: capira)
State.create(name: 'Cermeño', district: capira)
State.create(name: 'Cirí de Los Sotos', district: capira)
State.create(name: 'Cirí Grande', district: capira)
State.create(name: 'El Cacao', district: capira)
State.create(name: 'La Trinidad', district: capira)
State.create(name: 'Las Ollas Arriba', district: capira)
State.create(name: 'Lídice', district: capira)
State.create(name: 'Villa Carmen', district: capira)
State.create(name: 'Villa Rosario', district: capira)
State.create(name: 'Santa Rosa', district: capira)

# District: Chame
chame = District.create(name: 'Chame', province: panama_oeste)
State.create(name: 'Chame', district: chame)
State.create(name: 'Bejuco', district: chame)
State.create(name: 'Buenos Aires', district: chame)
State.create(name: 'Cabuya', district: chame)
State.create(name: 'Chicá', district: chame)
State.create(name: 'El Líbano', district: chame)
State.create(name: 'Las Lajas', district: chame)
State.create(name: 'Nueva Gorgona', district: chame)
State.create(name: 'Punta Chame', district: chame)
State.create(name: 'Sajalices y Sorá', district: chame)

# District: La Chorrera
la_chorrera = District.create(name: 'La Chorrera', province: panama_oeste)
State.create(name: 'Barrio Balboa', district: la_chorrera)
State.create(name: 'Barrio Colón', district: la_chorrera)
State.create(name: 'Amador', district: la_chorrera)
State.create(name: 'Arosemena', district: la_chorrera)
State.create(name: 'El Arado', district: la_chorrera)
State.create(name: 'El Coco', district: la_chorrera)
State.create(name: 'Feuillet', district: la_chorrera)
State.create(name: 'Guadalupe', district: la_chorrera)
State.create(name: 'Herrera', district: la_chorrera)
State.create(name: 'Hurtado', district: la_chorrera)
State.create(name: 'Iturralde', district: la_chorrera)
State.create(name: 'La Represa', district: la_chorrera)
State.create(name: 'Los Díaz', district: la_chorrera)
State.create(name: 'Mendoza', district: la_chorrera)
State.create(name: 'Obaldía', district: la_chorrera)
State.create(name: 'Playa Leona', district: la_chorrera)
State.create(name: 'Puerto Caimito', district: la_chorrera)
State.create(name: 'Santa Rita', district: la_chorrera)

# District: San Carlos
san_carlos = District.create(name: 'San Carlos', province: panama_oeste)
State.create(name: 'San Carlos', district: san_carlos)
State.create(name: 'El Espino', district: san_carlos)
State.create(name: 'El Higo', district: san_carlos)
State.create(name: 'Guayabito', district: san_carlos)
State.create(name: 'La Ermita', district: san_carlos)
State.create(name: 'La Laguna', district: san_carlos)
State.create(name: 'Las Uvas', district: san_carlos)
State.create(name: 'Los Llanitos', district: san_carlos)
State.create(name: 'San José', district: san_carlos)

embera = Province.create(title: "Embera")
embera_dic = District.create(name: 'Embera', province: embera)
State.create(name: 'Embera', district: embera_dic)

guna_yala = Province.create(title: "Guna Yala")
guna_yala_dic = District.create(name: 'Guna Yala', province: guna_yala)
State.create(name: 'Guna Yala', district: guna_yala_dic)

#Province.create(title: "Guna Yala")
