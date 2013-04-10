class Kid < ActiveRecord::Base
  attr_accessible :dob, :image, :name
  has_many :chores
end
