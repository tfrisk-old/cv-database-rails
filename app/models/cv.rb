class Cv < ActiveRecord::Base
  attr_accessible :description, :forename, :freetext, :surname, :title

  validates :forename, :presence => :true
  validates :surname, :presence => :true
end
