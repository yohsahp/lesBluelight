class Job < ActiveRecord::Base
  belongs_to :location

  has_many :check_ins
  has_many :officers, through: :assignments
end
