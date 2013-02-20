class Language < ActiveRecord::Base
  belongs_to :cv
  attr_accessible :level, :name

  validates :name, :presence => :true
  validates :level, :presence => :true
end
