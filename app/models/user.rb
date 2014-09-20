class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :designations
  belongs_to :congregation
  accepts_nested_attributes_for :designations

  # Validações
  validates :name, presence: true
  validates :congregation, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  def teste
    User.find_by! approved: false
  end
  
  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end

  
end
