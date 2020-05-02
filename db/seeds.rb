# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
cities = City.create([{ city: 'Selecciona la Ciudad donde resides' }, { city: 'Arica' }, { city: 'Iquique' }, { city: 'Antofagasta' }, 
                    { city: 'Calama' }, { city: 'Copiapó' }, { city: 'Coquimbo' }, 
                    { city: 'La Serena' }, { city: 'Ovalle' }, { city: 'Valparaiso' }, 
                    { city: 'Viña del Mar' }, { city: 'Quillota' }, { city: 'La Calera' }, 
                    { city: 'Santiago' }, { city: 'Rancagua' }, { city: 'San Fernando' }, 
                    { city: 'Santa Cruz' }, { city: 'Talca' }, { city: 'Linares' }, 
                    { city: 'Temuco' }, { city: 'Villarrica' }, { city: 'Valdivia' }, 
                    { city: 'Puerto Montt' }, { city: 'Puerto Varas' }, { city: 'Castro' }, 
                    { city: 'Coihaique' }, { city: 'Punta Arenas' }])


=begin
Customer.destroy_all
customers = Customer.create([{ email: 'naty.olivos4@gmail.com', password: '123456' }, { email: 'ssalinascalibar@gmail.com', password: '123456' }])
=end
