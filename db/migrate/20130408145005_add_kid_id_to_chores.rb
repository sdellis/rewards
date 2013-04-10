class AddKidIdToChores < ActiveRecord::Migration
  def change
    add_column :chores, :kid_id, :integer
  end
end
