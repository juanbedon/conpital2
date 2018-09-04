#This lib will serve as a record for how much money have I spent. Will show 4 graphs with info from the last 6 months, day, category and comparison of two months.
class DashboardHandler

	def initialize (expenses)
		@expenses = expenses
	end

  def amount_of_today
  	@expenses.daily_expenses.pluck(:amount).sum
  end

  def amount_of_yesterday
  	@expenses.last_day_expenses.pluck(:amount).sum
  end

  def amount_of_current_month
  	@expenses.this_month.pluck(:amount).sum
  end

  def amount_of_last_month
  	@expenses.last_month.pluck(:amount).sum
  end

  def last_six_months_expenses_transaction_type_overview
  	@expenses.last_six_months
  end

  def this_month
    @expenses.this_month
  end

  def last_month
    @expenses.last_month
  end

end