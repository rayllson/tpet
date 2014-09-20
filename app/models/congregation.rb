class Congregation < ActiveRecord::Base
	has_many :users
	has_many :attachments
	has_many :posts
	has_many :visit_forms

	# Validações
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :address, presence: true
	
end
