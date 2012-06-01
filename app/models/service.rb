class Service < ActiveRecord::Base
  attr_accessible :due_date, :frequency, :classification
  belongs_to :building
end
