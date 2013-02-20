class Skill < ActiveRecord::Base
  belongs_to :cv
  attr_accessible :name
end
