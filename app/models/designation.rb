class Designation < ActiveRecord::Base
	belongs_to :localization
	has_and_belongs_to_many :users
	accepts_nested_attributes_for :users, :allow_destroy => true

	# Validações
	validates :schedule, presence: true
	validates :users, presence: true

end
