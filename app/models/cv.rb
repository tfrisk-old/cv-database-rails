class Cv < ActiveRecord::Base
  attr_accessible :description, :forename, :freetext, :surname, :title, :skills_attributes

  validates :forename, :presence => :true
  validates :surname, :presence => :true

  has_many :projects, :dependent => :destroy
  has_many :languages, :dependent => :destroy
  has_many :skills

  accepts_nested_attributes_for :skills, :allow_destroy => :true,
        :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
