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

  scope :for_category_and_amount, -> (_category, _amount){joins(:category).where("categories.name = ? and expenses.amount < ?", _category, _amount)}
  def self.total_spent_by_user
    select(:amount).where(user_id:1).pluck(:amount).sum    
  end

  scope :last_six_months, -> {where("date >= ?", 6.months.ago)}
  #Este es con ActiveRecord, el siguiente es con SQL: scope :this_month, -> {where(date: DateTime.now.beginning_of_month..DateTime.now.end_of_month)}
  scope :this_month, -> {where('date > ? and date < ? ', Time.now.beginning_of_month, Time.now.end_of_month )}
  scope :by_category, -> (category) {joins(:category).where("categories.name = ?", category)}
  #scope :accumulated, -> 

  scope :daily_expenses, -> { where("date >= ?", 1.day.ago.end_of_day)}


  def date_cant_be_nil
  	if self.date.nil?
  	  self.date = Time.now
  	end
  end
  
end