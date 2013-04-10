class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.string :image
      t.date :dob

      t.timestamps
    end
  end
end
