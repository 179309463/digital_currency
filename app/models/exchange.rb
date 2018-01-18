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

    searchkick

    include RailsAdminCharts

    def self.graph_data since=30.days.ago
      [
        {
          name: 'Admin Users',
          pointInterval: point_interval = 1.day * 1000,
          pointStart: start_point = since.to_i * 1000,
          data: self.where(support_type: :xianhuo).delta_records_since(since)
        },
        {
          name: 'Standard Users',
          pointInterval: point_interval,
          pointStart: start_point,
          data: self.where(support_type: :fabi).delta_records_since(since)
        }
      ]
    end

    def self.xaxis
      ['cat a', 'cat b', 'cat c', 'cat d', 'cat e', 'cat f', 'cat g', 'cat h']
    end
    
    def self.label_rotation
      "-45"
    end

end
