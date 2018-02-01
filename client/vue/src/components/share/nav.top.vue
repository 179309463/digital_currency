<style scoped>
  .minWidth {
    min-width: 1200px;
    width: 1200px;
    margin: 0 auto
  }

  .minWidth .leftSise {
    float: left
  }

  .minWidth .rightSise {
    float: right
  }

  .minWidth:after {
    content: '';
    display: block;
    width: 100%;
    clear: both
  }

.totalvolcap.text-red:after {
  content: url('/static/images/arrow-d4.svg')
}

.totalvolcap.text-green:after {
  content: url('/static/images/arrow-u3.svg')
}

.space:before {
  content: '/';
  margin: 0 5px;
  font-style: normal
}
</style>

<template>
  <div class="minWidth" id="globalinfo">
    <div class="leftSise">
      虚拟币：<a href="/currencies">{{globalinfo.virtual}}</a>
      <i class="space"></i>
      代币：<a href="/currencies">{{globalinfo.daibi}}</a>
      <i class="space"></i>
      交易平台：<a href="/exchanges">{{globalinfo.exchanges}}</a>
      <i class="space"></i>
      24小时成交量：<a id="total_vol" class="totalvolcap" href="/pages/charts">¥{{globalinfo.vol24h}}亿</a>
      <i class="space"></i>
      总市值：<a id="total_cap" class="totalvolcap" href="/pages/charts">¥{{globalinfo.volTotal}}亿</a>
      <i class="space"></i>
      GBI指数：<a id="total_gbi" class="totalvolcap" href="/pages/gbi">{{globalinfo.gbi}}</a>
    </div>
    <div class="leftSise"></div>
    <nav-login></nav-login>
  </div>
</template>

<script>
import ShareNavLogin from '@/components/share/nav.login'

export default {
  data () {
    return {
      globalinfo: {
        virtual: 1151,
        daibi: 601,
        exchanges: 252,
        vol24h: 1937.96,
        volTotal: 33040.80,
        gbi: 14324.07
      }
    }
  },
  components: {
    'nav-login': ShareNavLogin
  }
}
</script>
