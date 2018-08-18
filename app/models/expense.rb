# == Schema Information
#
# Table name: expenses
#
#  id                  :bigint(8)        not null, primary key
#  amount              :float            not null
#  concept             :string           not null
#  date                :datetime         not null
#  user_id             :bigint(8)        not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  category_id         :bigint(8)
#  transaction_type_id :bigint(8)
#

class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :transaction_type

  validates :user_id, presence: true
  validates :category, presence: true
  validates :transaction_type, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :concept, presence: true
  before_create :date_cant_be_nil  

#  scope :for_category_and_amount, -> (_category, _amount){joins(:category).where("categories.name = ? and expenses.amount < ?", _category, _amount)}
#  def self.total_spent_by_user
#    select(:amount).where(user_id:1).pluck(:amount).sum    
#  end

  scope :daily_expenses, -> {where("date >= ?", 1.day.ago.end_of_day)}
  scope :last_day_expenses, -> {where("date between ? and ?", 1.day.ago.beginning_of_day, 1.day.ago.end_of_day)}
  scope :this_month, -> {where('date > ? and date < ?', Time.now.beginning_of_month, Time.now.end_of_month )}
  scope :last_month, -> {where('date > ? and date < ?', 1.month.ago.beginning_of_month, 1.month.ago.end_of_month)}
  
  scope :last_six_months, -> {where("date >= ?", 6.months.ago)}
  scope :by_category, -> (category) {joins(:category).where("categories.name = ?", category)}


  def date_cant_be_nil
  	if self.date.nil?
  	  self.date = Time.now
  	end
  end
  
end
