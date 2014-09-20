class VisitForm < ActiveRecord::Base
  belongs_to :user
  belongs_to :congregation
end
