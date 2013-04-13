class Kid < ActiveRecord::Base
  attr_accessible :dob, :image, :name
  has_many :chores

  def total_points
        total=0 
        chores.each do |chore| 
            total += chore.points
        end 
        return total
  end

end
