class Chore < ActiveRecord::Base
  attr_accessible :points, :title, :kid_id
  belongs_to :kid
end
