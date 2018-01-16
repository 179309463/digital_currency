# == Schema Information
#
# Table name: exchanges
#
#  id               :integer          not null, primary key
#  icon             :string
#  name             :string
#  memo             :string
#  description      :text
#  web_site         :string
#  country          :string
#  price_memo       :string
#  support_type     :string
#  stars            :integer
#  trade_pair_count :integer
#  rank             :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Exchange < ApplicationRecord
	extend Enumerize
    extend ActiveModel::Naming

    enumerize :support_type, in: %w[xianhuo qihuo fabi]

    has_many :exchange_notices, dependent: :destroy
    has_many :exchange_trade_ranks, dependent: :destroy
end
