class AddDebtToKids < ActiveRecord::Migration
  def change
    add_column :kids, :debt, :integer, :null => false, :default => 0
  end
end
