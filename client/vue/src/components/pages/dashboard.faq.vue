<template>
  <page-dashboard title="常见问题" title_en="FAQ">
    <p>常见问题(FAQ)</p>
    <p>1.什么是市值(或者叫币值)，市值如何计算？</p>
    <p>数字货币的市值有点类似于股票的流通市值,它是通过价格乘以流通数量来计算的。</p>
    <p>市值=数字货币的当前价格*流通数量</p>
    <p>&nbsp;</p>
    <p>2.不同种类的数字货币如何计算价格？</p>
    <p>由于数字货币在全球的多个交易平台都有交易，并且价格不同，本站的数字货币价格是通过每个市场上的成交量加权平均值来计算的。</p>
    <p>可以从每个数字货币详情页面的行情列表找到价格的来源。例如，以太坊的当前价格来自如下交易平台的加权价格：&nbsp;
      <a href="../currencies/ethereum/index.html#marketticker" target="_blank">http://www.eastcoinbay.com/currencies/ethereum/#marketticker</a>。</p>
    <p>&nbsp;</p>
    <p>3.&ldquo;流通数量&rdquo;，&ldquo;总发行量&rdquo;，&ldquo;最大总量&rdquo;之间有什么不同？</p>
    <p>流通数量最接近于流通在市场上的货币和普通大众手中货币数量。</p>
    <p>总发行量是目前存在的所有货币数量（不包含已证实被骗走的部分货币）</p>
    <p>最大总量是最接近于数字货币的生命周期内可能存在的最大数量的货币。</p>
    <p>&nbsp;</p>
    <p>4.为什么决定使用流通数量来确定市值，而不是用总发行量？</p>
    <p>因为流通数量能更好的度量市值。货币是锁定的、预定的，是不能在公开市场上出售的，货币不会影响价格，因此也不允许影响市值。使用流通数量的方法就类似于使用股票流通股份来确定传统投资的市值。</p>
    <p>&nbsp;</p>
    <p>5.&ldquo;虚拟币&rdquo;和&ldquo;代币&rdquo;的区别是什么？</p>
    <p>货币是可以独立运作的加密货币。</p>
    <p>代币依赖于加密货币作为操作平台。检查加密资产清单可以查看资产列表和各自的平台。</p>
  </page-dashboard>
</template>

<script>
import PageDashboard from '@/components/dashboards/dashboard'

export default {
  components: {
    'page-dashboard': PageDashboard
  }
}
</script>
