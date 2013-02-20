class Education < ActiveRecord::Base
  belongs_to :cv
  attr_accessible :description, :enddate, :startdate, :title

  validates :title, :presence => :true
end
