class AddDobToEvent < ActiveRecord::Migration
  def change
  	add_column :events , :dob , :date
  end
end
