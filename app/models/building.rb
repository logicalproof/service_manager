class Building < ActiveRecord::Base
  attr_accessible :address, :name
  belongs_to :site
  has_many :services
end
