class Assignment < ActiveRecord::Base
  belongs_to :job
  belongs_to :officer 
end
