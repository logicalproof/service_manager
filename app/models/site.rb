class Site < ActiveRecord::Base
  attr_accessible :name
  has_many :buildings
  has_many :services, :through => :buildings
end
