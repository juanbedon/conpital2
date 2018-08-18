# == Schema Information
#
# Table name: transaction_types
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TransactionType < ApplicationRecord
  has_many :expenses

  validates :name, uniqueness: true
end
