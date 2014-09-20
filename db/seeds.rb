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