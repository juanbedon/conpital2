# == Schema Information
#
# Table name: transaction_types
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :transaction_type do
    name Faker::Pokemon.name
  end
end
