class ChangeDatetimeToDate < ActiveRecord::Migration
  def change
  	change_column :events , :edate , :date
  end
end
