# == Schema Information
#
# Table name: exchanges
#
#  id                :integer          not null, primary key
#  icon              :string(255)
#  name_translations :json
#  memo              :string(255)
#  description       :text(65535)
#  web_site          :string(255)
#  country           :string(255)
#  price_memo        :string(255)
#  support_type      :string(255)
#  stars             :integer
#  trade_pair_count  :integer
#  rank              :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Exchange < ApplicationRecord
	extend Enumerize
    extend ActiveModel::Naming

    enumerize :support_type, in: %w[xianhuo qihuo fabi]

    has_many :exchange_notices, dependent: :destroy
    has_many :exchange_trade_ranks, dependent: :destroy

    has_paper_trail
   
    translates :name 
end
