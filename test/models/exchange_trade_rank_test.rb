# == Schema Information
#
# Table name: exchange_trade_ranks
#
#  id          :integer          not null, primary key
#  exchange_id :integer
#  stat_date   :date
#  trade_count :integer
#  rank        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_exchange_trade_ranks_on_exchange_id  (exchange_id)
#
# Foreign Keys
#
#  fk_rails_...  (exchange_id => exchanges.id)
#

require 'test_helper'

class ExchangeTradeRankTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
