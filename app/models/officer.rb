class Officer < ActiveRecord::Base
  belongs_to :agency_contact

  has_many :check_ins
  has_many :jobs, through: :assignments
end
