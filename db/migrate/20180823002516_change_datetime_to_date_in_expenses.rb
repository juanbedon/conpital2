class ChangeDatetimeToDateInExpenses < ActiveRecord::Migration[5.1]

	def up
	  change_column :expenses, :date, :date
	end

	def down
	  change_column :expenses, :date, :datetime
	end

end
