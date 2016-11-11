class AgencyContact < ActiveRecord::Base
  belongs_to :location
  has_many :officers
end
