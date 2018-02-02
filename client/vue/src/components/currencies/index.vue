<style scoped>
.tips {
  padding: 15px;
  color: #999;
  font-size: 12px
}
</style>

<template>
  <div class="box box860" style="min-height:2880px">
    <div class="boxTit">
      <h1>所有货币</h1>
      <index-search></index-search>
    </div>
    <index-tool></index-tool>
    <div class="boxContain">
      <sortable-table>
        <thead>
          <tr>
            <th>#</th>
            <th data-sort-method='none'>名称</th>
            <th>流通市值</th>
            <th>价格</th>
            <th>流通数量</th>
            <th>成交额(24h)</th>
            <th>涨幅(24h)</th>
            <th width="95" data-sort-method='none'>价格趋势(7d)</th></tr>
        </thead>
        <tbody>
          <tr :id="currency.id" :key="currency.id" v-for="currency of currencies">
            <td>{{currency.order}}</td>
            <td>
              <a :href="'/currencies/'+currency.id" target="_blank">
                <img :src="currency.image" :alt="currency.name">{{currency.name}}
              </a>
            </td>
            <td class="market-cap" :data-usd="currency.marketcap.usd" :data-cny="currency.marketcap.cny" :data-btc="currency.marketcap.btc">¥{{currency.marketcap.cny}}亿</td>
            <td>
              <a :href="'/currencies/'+currency.id+'#markets'" target="_blank" class="price" :data-usd="currency.price.usd" :data-cny="currency.price.cny" :data-btc="currency.price.btc">¥{{currency.price.cny}}</a>
            </td>
            <td>{{currency.volCount}}万</td>
            <td>
              <a :href="'/currencies/'+currency.id+'#markets'" target="_blank" class="volume" :data-usd="currency.volume.usd" :data-cny="currency.volume.cny" :data-btc="currency.volume.btc">¥{{currency.volume.cny}}万</a>
            </td>
            <td class="change">
              <span class="text-red">{{currency.change}}%</span>
            </td>
            <td class="char">
              <util-line :data="currency.data"></util-line>
            </td>
          </tr>
        </tbody>
      </sortable-table>
    </div>
    <div class="boxTools">
      <index-pagination></index-pagination>
    </div>
    <div class="tips">备注：* 不可挖矿&nbsp;&nbsp;&nbsp;&nbsp;** 有预挖矿&nbsp;&nbsp;&nbsp;&nbsp;IFO表示该币由其它币分叉而来。</div>
  </div>
</template>

<script>
import UtilLine from '@/components/utils/line'
import SortableTable from '@/components/utils/sortable-table'

import CurrencyIndexSearch from '@/components/currencies/index.search'
import CurrencyIndexTool from '@/components/currencies/index.tool'
import CurrencyIndexPagination from '@/components/currencies/index.pagination'

export default {
  name: 'CurrencyIndex',
  components: {
    'index-search': CurrencyIndexSearch,
    'index-tool': CurrencyIndexTool,
    'index-pagination': CurrencyIndexPagination,
    'util-line': UtilLine,
    'sortable-table': SortableTable
  },
  data () {
    return {
      currencies: [
        {
          order: 1,
          id: 'bitcorn',
          image: '/static/images/currency.png',
          name: 'BTC-比特币',
          marketcap: {
            usd: 176624485715,
            cny: 1131509375135,
            btc: 16898432
          },
          price: {
            usd: 10500,
            cny: 67266,
            btc: 1
          },
          volCount: 1682,
          volume: {
            usd: 5625949541.07999,
            cny: 36041519242.9921,
            btc: 538855.452734885
          },
          change: -5.51,
          data: [12256, 11131, 11131, 10330, 10396, 11237, 11255, 11715, 11953, 11518, 11636, 12002, 11907, 11619, 12774, 12999, 13198, 13222, 12533, 12125, 11625, 11626, 11843, 11964, 10868, 10940, 10892, 10596]
        }
      ]
    }
  }
}
</script>
