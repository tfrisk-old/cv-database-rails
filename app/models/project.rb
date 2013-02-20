class Project < ActiveRecord::Base
  belongs_to :cv
  attr_accessible :customer, :description, :enddate, :startdate, :title

  validates :customer, :presence => :true
end
