class Location < ActiveRecord::Base
  has_many :jobs
  has_many :retail_loss_prevention_managers
  has_many :store_managers
  has_many :agency_contacts
end
