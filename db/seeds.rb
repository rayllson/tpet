# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	Congregation.create(name: 'Novo Horizonte', address: 'Rua itauna')
	User.create(name: 'admin-tpet', email: 'admin@tpet.com', address: "Rua", approved: true, phone: '13232323', password: '980900diego', 
		password_confirmation:'980900diego', congregation_id: 1, admin: true)
	localization = Localization.create([{ name: "HGV TERESINA" },
										{ name: "METROPOLITAN TERESINA" },
										{ name: "PRACA DO FRIPISA TERESINA" },
										{ name: "JOAO LUIS FERREIRA TERESINA" },
										{ name: "PRACA RIO BRANCO TERESINA" },
										{ name: "CALCADAO DA SIMPLICIO MENDES TERESINA" },
										{ name: "PRACA PEDRO II TERESINA" },
										{ name: "SHOPPING DA CIDADE TERESINA" },
										{ name: "13 DE MAIO TERESINA" },
										{ name: "MERCADO VELHO TERESINA" },
										{ name: "PRACA DO LICEU TERESINA" },
										{ name: "POTYCABANA TERESINA" },
										{ name: "PARQUE LAGOAS DO NORTE" },])
