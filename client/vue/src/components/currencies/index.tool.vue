<style scoped>
.usercustom {
  position: relative;
}

.usercustom:after {
  content: 'new';
  height: 10px;
  line-height: 10px;
  padding: 3px 5px 3px 3px;
  background: red;
  border-radius: 3px;
  font-style: italic;
  display: block;
  position: absolute;
  color: #fff;
  transform: scale(0.8);
  top: 0;
  margin-top: -8px;
  right: 2px;
  margin-right: -3px;
}

.btnlink button:after {
  display: none !important;
}

.btnlink a {
  color: #333;
  text-decoration: none;
  height: 20px;
}

.btnlink  a:hover {
  color: #fff;
  background: #3499da;
}

.slideBtn span:after {
  margin-left: 2px
}

.slideBtn {
  position: relative;
  display: inline-block;
  z-index: 9999
}

.slideBtn button, .slideBtn>a {
  display: inline-block;
  border: 1px solid #eaecef;
  border-radius: 3px;
  position: relative;
  background: #fff;
  padding: 5px 10px;
  color: #333;
  cursor: pointer;
  transition: all .3s
}

.slideBtn button:hover {
  background: #3499da;
  color: #fff
}

.slideBtn span {
  line-height: 32px;
  padding: 0 10px
}

.slideBtn ul {
  position: absolute;
  border: 1px solid #eaecef;
  box-shadow: 1px 1px 3px #eaecef;
  margin-left: -1px;
  margin-top: 5px;
  background: #fff;
  padding: 3px 0;
  border-radius: 3px;
  display: none;
  white-space: nowrap;
  min-width: 100%
}

.slideBtn ul li a {
  padding: 3px 10px;
  display: block;
  text-decoration: none;
  height: 25px;
  line-height: 25px;
  color: #333
}

.slideBtn ul li a:hover {
  background: #3499da;
  color: #fff
}

.slideBtn button:active {
  background: #3499da;
  color: #fff
}

.sline {
height: 1px;
background: #eaecef
}

.unit ul li {
  width: 120px;
  float: left
}

.unit ul {
  width: 600px
}
</style>

<template>
  <div class="boxTools">
    <div class="slideBtn btnlink">
      <a href="index.html">全部</a>
    </div>
    <div class="slideBtn btnlink usercustom">
      <a href="currencies/userticker.html">自选行情</a>
    </div>
    <div class="slideBtn">
      <button>货币</button>

      <ul>
      <li>
        <a href="currencies/index.html">前100</a>
      </li>
      <li class="sline"></li>
      <li>
        <a href="currencies/index.html">根据流通市值排序</a></li>
      <li>
        <a href="currencies/marketcap-by-totalsupply/index.html">根据总市值排序</a></li>
      <li>
        <a href="currencies/filter-nonmineable/index.html">过滤不可挖矿</a></li>
      <li>
        <a href="currencies/filter-premined/index.html">过滤预挖矿的</a></li>
      <li>
        <a href="currencies/filter-nonmineable_premined/index.html">过滤不可挖矿及预挖矿的</a></li>
      </ul>
    </div>
    <div class="slideBtn">
      <button>代币</button>
      <ul>
      <li>
        <a href="assets/index.html">前100</a></li>
      <li class="sline"></li>
      <li>
        <a href="assets/index.html">根据流通市值排序</a></li>
      <li>
        <a href="assets/marketcap-by-totalsupply/index.html">根据总市值排序</a></li>
      </ul>
    </div>
    <div class="slideBtn unit">
      <button>人民币(CNY)</button>
      <ul>
      <li>
        <a href="#CNY" class="price-toggle" data-currency="cny">人民币(CNY)</a></li>
      <li>
        <a href="#USD" class="price-toggle" data-currency="usd">美元(USD)</a></li>
      <li>
        <a href="#BTC" class="price-toggle" data-currency="btc">比特币(BTC)</a></li>
      <li>
        <a href="#ETH" class="price-toggle" data-currency="eth">以太坊(ETH)</a></li>
      <li>
        <a href="#JPY" class="price-toggle" data-currency="jpy">日元(JPY)</a></li>
      <li>
        <a href="#KRW" class="price-toggle" data-currency="krw">韩币(KRW)</a></li>
      <li>
        <a href="#HKD" class="price-toggle" data-currency="hkd">港币(HKD)</a></li>
      <li>
        <a href="#RUB" class="price-toggle" data-currency="rub">卢布(RUB)</a></li>
      <li>
        <a href="#INR" class="price-toggle" data-currency="inr">卢比(INR)</a></li>
      <li>
        <a href="#AUD" class="price-toggle" data-currency="aud">澳元(AUD)</a></li>
      <li>
        <a href="#EUR" class="price-toggle" data-currency="eur">欧元(EUR)</a></li>
      <li>
        <a href="#CHF" class="price-toggle" data-currency="chf">法郎(CHF)</a></li>
      <li>
        <a href="#GBP" class="price-toggle" data-currency="gbp">英镑(GBP)</a></li>
      <li>
        <a href="#CAD" class="price-toggle" data-currency="cad">加元(CAD)</a></li>
      <li>
        <a href="#IDR" class="price-toggle" data-currency="idr">印尼盾(IDR)</a></li>
      <li>
        <a href="#BRL" class="price-toggle" data-currency="brl">巴西雷亚尔(BRL)</a></li>
      <li>
        <a href="#MXN" class="price-toggle" data-currency="mxn">比索(MXN)</a></li>
      </ul>
    </div>
    <div style="display:none" id="currency-exchange-rates" data-cny="0.15609634266269143" data-usd="1" data-btc="10407.1" data-eth="937.01207246177455" data-jpy="0.009038240796811307" data-krw="0.0009309210066979767" data-hkd="0.1279132236690629" data-rub="0.017693180782728624" data-inr="0.01567275291905023" data-aud="0.796781004740847" data-eur="1.2246707472695966" data-chf="1.0394707846341271" data-gbp="1.3952177516344977" data-cad="0.8015710793154583" data-idr="7.47758696218376e-05" data-brl="0.3121297361005507" data-mxn="0.053277072744515125"></div>

    <index-pagination></index-pagination>
  </div>
</template>

<script>
import $ from 'jquery'
import CurrencyIndexPagination from '@/components/currencies/index.pagination'

export default {
  name: 'CurrencyIndexTool',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    'index-pagination': CurrencyIndexPagination
  }
}

$(function () {
  // 下拉菜单
  $('.slideBtn').click(function (e) {
    e.stopPropagation()
    if ($(this).find('ul').css('display') !== 'block') {
      $('.slideBtn').find('ul').css('display', 'none')
      $(this).find('ul').slideDown(100)
    } else {
      $('.slideBtn').find('ul').slideUp(100)
    }
  })
  $('.unit ul li').click(function () {
    $(this).closest('.slideBtn').find('button').text($(this).text())
    $('.slideBtn').find('ul').slideUp(100)
  })

  // 点击屏幕取消
  $('html').click(function () {
    $('.slideBtn ul').slideUp(100)
  })
})

function toLocaleString (n, m) {
  if (m === null || m === '') {
    m = 0
  }

  var str = n.toLocaleString()
  if (str.lastIndexOf('.') === -1) {
    return str
  }
  if (m > 0) {
    str = str.substring(0, str.lastIndexOf('.') + 1 + m)
  } else {
    str = str.substring(0, str.lastIndexOf('.') + m)
  }
  return str
}
function formatMarketCap (val) {
  if (val >= 1000000000) {
    val = Math.round(val / 100000000).toLocaleString() + '亿'
  } else if (val >= 100000000) {
    val = (val / 100000000).toFixed(2).toLocaleString() + '亿'
  } else if (val >= 1000000) {
    val = (val / 100000000).toFixed(4).toLocaleString() + '亿'
  } else if (val >= 1000) {
    val = toLocaleString(val, 0)
  } else {
    val = toLocaleString(val, 2)
  }
  return val
}
function formatPrice (val) {
  var price = val.toString()
  var indx = price.indexOf('.')
  var priceStr = price
  var counter = 0
  if (indx > -1) {
    for (let i = price.length - 1; i >= 1; i--) {
      if (price[i] === '0') {
        counter++
        if (price[i - 1] === '.') {
          counter++
          break
        }
      } else {
        break
      }
    }
    priceStr = ''
    for (let i = 0; i < price.length - counter; i++) {
      priceStr += price[i]
    }
  }
  return priceStr
}
function formatCrypto (val) {
  var result
  if (val >= 1000) {
    result = toLocaleString(val, 2)
  } else if (val >= 1) {
    result = val.toFixed(2)
  } else {
    if (val > 0.01) {
      result = val.toPrecision(4)
    } else {
      result = val.toFixed(8)
    }
  }
  return result
}
function formatCryptoVolume (val) {
  if (val >= 1000000) {
    val = Math.round(val / 10000).toLocaleString() + '万'
  } else if (val >= 100000) {
    val = (val / 10000).toLocaleString() + '万'
  } else if (val >= 1000) {
    val = (val / 10000).toFixed(2).toLocaleString() + '万'
  } else if (val >= 100) {
    val = val.toFixed(0).toLocaleString()
  } else if (val >= 0.1) {
    val = val.toFixed(2).toLocaleString()
  } else {
    val = val.toFixed(4).toLocaleString()
  }

  return formatPrice(val)
}
var currencyCNName = {
  'usd': '美元',
  'eur': '€',
  'cny': '人民币',
  'gbp': '英镑',
  'cad': '加元',
  'rub': '卢布',
  'hkd': '港币',
  'jpy': '日元',
  'aud': '澳元',
  'brl': '巴西雷亚尔',
  'inr': '印尼盾',
  'krw': '韩币',
  'mxn': '比索',
  'idr': '印尼盾',
  'chf': '法郎',
  'eth': '以太坊',
  'btc': '比特币'
}

function toggleCurrency (currency) {
  var currencyUppercase = currency.toUpperCase()
  var currencyLowercase = currency.toLowerCase()
  var currencySymbols = {
    'usd': '$',
    'eur': '€',
    'cny': '¥',
    'gbp': '£',
    'cad': '$',
    'rub': '<img src="/assets/images/ruble.gif"/>',
    'hkd': '$',
    'jpy': '¥',
    'aud': '$',
    'brl': 'R$',
    'inr': '₹',
    'krw': '₩',
    'mxn': '$',
    'idr': 'Rp',
    'chf': 'Fr'
  }
  $('#currency-switch-button').html(currencyCNName[currencyLowercase] + '(' + currencyUppercase + ')<span class="caret"></span>')

  if (currencyLowercase === 'btc') {
    $.each([$('.market-cap'), $('.price'), $('.volume')], function () {
      let selectorType = this.selector
      $.each(this, function (key, value) {
        let amount = $(this).data('btc')

        if (amount !== '?') {
          amount = parseFloat(amount)
          if (selectorType === '.price') {
            amount = formatCrypto(amount)
          } else if (selectorType === '.volume') {
            amount = formatCryptoVolume(amount)
          } else {
            amount = formatMarketCap(amount)
          }
        }
        $(this).html(amount + ' BTC')
      })
    })
  } else if (currencyLowercase === 'cny') {
    $.each([$('.market-cap'), $('.price'), $('.volume')], function () {
      let selectorType = this.selector
      $.each(this, function (key, value) {
        let amount = $(this).data('cny')

        if (amount !== '?') {
          amount = parseFloat(amount)
          if (selectorType === '.price') {
            amount = formatCrypto(amount)
          } else if (selectorType === '.volume') {
            amount = formatCryptoVolume(amount)
          } else {
            amount = formatMarketCap(amount)
          }
          $(this).html(currencySymbols[currencyLowercase] + amount)
        } else {
          $(this).html(amount)
        }
      })
    })
  } else if (currencyLowercase === 'eth') {
    let foreignAmount = $('#currency-exchange-rates').data(currencyLowercase)
    $.each([$('.market-cap'), $('.price'), $('.volume')], function () {
      let selectorType = this.selector
      $.each(this, function (key, value) {
        let slug = $(this).closest('tr').attr('id')
        let amount = $(this).data('usd')

        if (amount !== '?') {
          amount = parseFloat(amount) / foreignAmount
          if (selectorType === '.price') {
            if (slug === 'id-ethereum') {
              amount = 1
            }
            amount = formatCrypto(amount)
          } else if (selectorType === '.volume') {
            amount = formatCryptoVolume(amount)
          } else {
            amount = formatMarketCap(amount)
          }
        }
        $(this).html(amount + ' ETH')
      })
    })
  } else {
    let foreignAmount = $('#currency-exchange-rates').data(currencyLowercase)
    $.each([$('.market-cap'), $('.price'), $('.volume')], function () {
      let selectorType = this.selector
      $.each(this, function (key, value) {
        let amount = $(this).data('usd')

        if (amount !== '?') {
          amount = parseFloat(amount) / foreignAmount
          if (selectorType === '.price') {
            amount = formatCrypto(amount)
          } else if (selectorType === '.volume') {
            amount = formatCryptoVolume(amount)
          } else {
            amount = formatMarketCap(amount)
          }
          $(this).html(currencySymbols[currencyLowercase] + amount)
        } else {
          $(this).html(amount)
        }
      })
    })
  }
  let dataSymbol = currencyLowercase
  if (currencyLowercase !== 'btc') {
    dataSymbol = 'usd'
  }
  $.each([$('.percent-1h'), $('.percent-24h'), $('.percent-7d')], function () {
    $.each(this, function (key, value) {
      let slug = $(this).closest('tr').attr('id')
      if (slug === 'id-ethereum' && currencyLowercase === 'eth') {
        $(this).html('0.00' + '%')
      } else {
        convert_percent($(this), dataSymbol)
      }
    })
  })
}
function toggleNative () {
  $('#currency-switch-button').html('平台价格' + ' <span class=\'caret\'></span>')
  $.each([$('.price'), $('.volume')], function () {
    let selectorType = this.selector
    $.each(this, function (key, value) {
      let amount = $(this).data('native')
      if (amount === null) {
        amount = 'N/A'
      } else if (amount !== '?') {
        amount = parseFloat(amount)
        if (selectorType === '.price') {
          amount = formatCrypto(amount)
        } else if (selectorType === '.volume') {
          amount = formatCryptoVolume(amount)
        } else {
          amount = formatMarketCap(amount)
        }
      }
      $(this).html(amount)
    })
  })
}
function togglePlatform () {
  $('#currency-switch-button').html('Platform' + ' <span class="caret"></span>')
  $.each([$('.market-cap'), $('.price'), $('.volume')], function () {
    let selectorType = this.selector
    $.each(this, function (key, value) {
      let amount = $(this).data('platform')
      let platformSymbol = $(this).closest('tr').data('platformsymbol')
      if (amount === null || amount === 'None') {
        amount = '?'
      } else if (amount !== '?') {
        amount = parseFloat(amount)
        if (selectorType === '.price') {
          amount = formatCrypto(amount)
        } else {
          amount = formatMarketCap(amount)
        }
      }
      let text = amount + ' ' + platformSymbol
      $(this).html(text)
    })
  })
  $.each([$('.percent-1h'), $('.percent-24h'), $('.percent-7d')], function () {
    $.each(this, function (key, value) {
      convert_percent($(this), 'platform')
    })
  })
}
$(document).ready(function () {
  if (window.location.hash) {
    let hash = window.location.hash.substring(1)
    if (hash === 'native' || hash === 'BTC' || hash === 'ETH' || hash === 'USD' || hash === 'EUR' || hash === 'CNY' || hash === 'GBP' || hash === 'CAD' || hash === 'RUB' || hash === 'HKD' || hash === 'JPY' || hash === 'AUD' || hash === 'BRL' || hash === 'INR' || hash === 'KRW' || hash === 'MXN' || hash === 'IDR' || hash === 'CHF') {
      if (hash === 'native') {
        toggleNative()
      } else {
        toggleCurrency(hash)
      }

      if ($('.unit2').length > 0) {
        for (var i = 0; i < $('.unit2 a').length; i++) {
          $('.unit2 a').eq(i).removeClass('active')
          if ('#' + hash === $('.unit2 a').eq(i).attr('href')) {
            $('.unit2 a').eq(i).addClass('active')
          }
        }
      }
    }
  }

  $('.price-toggle').click(function () {
    var text = $(this).text()
    $(this).closest('.unit').find('button').eq(0).html(text)
    var currency = $(this).data('currency')

    if (currency === 'native') {
      toggleNative()
    } else if (currency === 'platform') {
      togglePlatform()
    } else {
      toggleCurrency(currency)
    }
  })
})
</script>
