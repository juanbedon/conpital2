require 'rails_helper'
require './lib/dashboard_handler'

RSpec.describe DashboardHandler do

	before do
		time = Time.now.freeze
		@user = FactoryBot.create(:user)
		category = Category.create(name: Faker::Pokemon.name)
		transaction = TransactionType.create(name: Faker::Pokemon.name)
		new_expense = FactoryBot.create(:expense, category: category, transaction_type: transaction, user: @user, date: time)
		new_expense_1 = FactoryBot.create(:expense, category: category, transaction_type: transaction, user: @user, concept: "This is something", date: time)
		new_expense_2 = FactoryBot.create(:expense, category: category, transaction_type: transaction, user: @user, amount: 40000, date: time)
		new_expense_3 = FactoryBot.create(:expense, category: category, transaction_type: transaction, user: @user, amount: 40000, date: 2.days.ago)
		new_expense_4 = FactoryBot.create(:expense, category: category, transaction_type: transaction, user: @user, amount: 40000, date: 2.days.ago)
	end

	describe ".amount_of_today" do
			it "should show the amount spent of the day" do
				new_handler = described_class.new(@user.expenses)
				expect(new_handler.amount_of_today).to eq(90000)
			end
	end

end