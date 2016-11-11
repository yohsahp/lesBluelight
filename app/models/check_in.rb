class CheckIn < ActiveRecord::Base
  belongs_to :officer
  belongs_to :job 
end
