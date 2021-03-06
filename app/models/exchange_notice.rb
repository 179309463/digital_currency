# == Schema Information
#
# Table name: exchange_notices
#
#  id          :integer          not null, primary key
#  exchange_id :integer
#  title       :string
#  href        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_exchange_notices_on_exchange_id  (exchange_id)
#

class ExchangeNotice < ApplicationRecord
  belongs_to :exchange
end
