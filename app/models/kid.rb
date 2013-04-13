class Kid < ActiveRecord::Base
  attr_accessible :dob, :image, :name, :debt
  has_many :chores

  def total_points
        total=0 
        chores.each do |chore| 
            total += chore.points
        end 
        return total - self.debt
  end

  def spend amt
    cur_debt = self.debt
    self.debt = cur_debt + amt
    self.save
  end

end
