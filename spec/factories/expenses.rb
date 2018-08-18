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

FactoryBot.define do
  factory :expense do
  	concept Faker::Pokemon.name
  	amount 25000
  	#association :category, factory: :category
  	#association :transaction_type, factory: :transaction_type
  	association :user, factory: :user
  end
end
