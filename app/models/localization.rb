class Localization < ActiveRecord::Base
	has_many :designations
	geocoded_by :name
	after_validation :geocode, :if => :name_changed?

	# Validações
	validates :name, presence: true
	validates :name, uniqueness: true
	
end
