<style scoped>
.cell {
padding: 15px;
float: left;
width: 260px
}

.cell>div {
margin-bottom: 5px;
color: #666
}

.cell .num-b {
font-size: 35px;
font-weight: bold;
color: #666
}

.cell .small {
font-size: 20px;
vertical-align: middle;
margin-left: 5px
}

.cell .num {
font-size: 20px;
color: #666;
min-height: 19px;
font-weight: bold
}

.cell .tit {
color: #000
}

li.showmarket {
line-height: normal;
margin-top: 0;
overflow: hidden;
height: 80px
}

.showmarket .cell {
width: 130px;
border-left: 1px solid #eaecef;
background: #fff;
padding: 15px 10px
}

.showmarket .cell:last-child {
border-right: 1px solid #eaecef
}

.showmarket .cell .num {
font-weight: normal;
font-size: 13px;
float: left
}

.showmarket .cell .tit {
font-size: 14px;
width: 100%
}

.showmarket .cell .char {
float: left;
margin-left: 8px
}

.showmarket .text-green:after {
content: url("/static/arrow-u3.svg")
}

.showmarket .text-red:after {
content: url("/static/arrow-d4.svg")
}

.line {
display: none !important
}
</style>

<template>
  <li class="showmarket" style="float: right">
    <div class="cell" v-for="market of markets" :key="market.id">
      <div class="tit">
        <a :id="market.id" :href="market.href" target="_blank" rel="nofollow">{{market.name}}</a>
      </div>
      <div class="num">{{market.num}}</div>
      <div class="char">
        <span class="line">{{market.data}}</span>
      </div>
    </div>
  </li>
</template>

<script>
import $ from 'jquery'

export default {
  name: 'ShareNavMarket',
  data () {
    return {
      markets: [
        {
          id: 'ticker_bitfinex_btc_usd-1',
          href: 'https://www.bitfinex.com/',
          name: 'BTC/Bitfinex',
          num: 65760.67,
          data: [74963, 69215, 69949, 64859, 65673, 69645, 69664, 73802, 74023, 70970, 72158, 74451, 74097, 71692, 79155, 80295, 81992, 81890, 77899, 75842, 72178, 72454, 73489, 75000, 67701, 68396, 67139, 66349, 65760.67]
        },
        {
          id: 'ticker_bitfinex_btc_usd-2',
          href: 'https://www.bitfinex.com/',
          name: 'BTC/Bitfinex',
          num: 65760.67,
          data: [74963, 69215, 69949, 64859, 65673, 69645, 69664, 73802, 74023, 70970, 72158, 74451, 74097, 71692, 79155, 80295, 81992, 81890, 77899, 75842, 72178, 72454, 73489, 75000, 67701, 68396, 67139, 66349, 65760.67]
        },
        {
          id: 'ticker_bitfinex_btc_usd-3',
          href: 'https://www.bitfinex.com/',
          name: 'BTC/Bitfinex',
          num: 65760.67,
          data: [74963, 69215, 69949, 64859, 65673, 69645, 69664, 73802, 74023, 70970, 72158, 74451, 74097, 71692, 79155, 80295, 81992, 81890, 77899, 75842, 72178, 72454, 73489, 75000, 67701, 68396, 67139, 66349, 65760.67]
        }
      ]
    }
  }
}

$(function () {
  $('.line').peity('line', {
    width: 50,
    height: 15,
    fill: '#f5f5f5',
    min: 99999,
    strokeWidth: 1
  })
})
</script>
