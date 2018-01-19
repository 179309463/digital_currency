# == Schema Information
#
# Table name: exchanges
#
#  id                :integer          not null, primary key
#  icon              :string
#  memo              :string
#  description       :text
#  web_site          :string
#  country           :string
#  price_memo        :string
#  support_type      :string
#  stars             :integer
#  trade_pair_count  :integer
#  rank              :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  name_translations :json
#

require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
