class VisitForm < ActiveRecord::Base
  belongs_to :user
  belongs_to :congregation

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :cep, presence: true
  validates :phone, presence: true
  validates :language, presence: true
  validates :sex, presence: true
  validates :form_date, presence: true


end
