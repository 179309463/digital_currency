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

.text-red:after {
  content: url('/static/images/arrow-d4.svg')
}

.text-green:after {
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
    <div class="leftSise" v-for="(info, index) of infos" :key="info.code">
      {{info.name}}：<a :href="info.href" :class="[{'text-red':info.change=='up'}, {'text-green':info.change=='down'}]">{{info.value}}</a>
      <i class="space" v-if="index!=infos.length-1"></i>
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
      infos: [
        { code: 'virtual', name: '虚拟币', value: "1151", change: '', href: '/currencies' },
        { code: 'daibi', name: '代币', value: "601", change: '', href: '/currencies' },
        { code: 'exchanges', name: '交易平台', value: "252", change: '', href: '/exchanges' },
        { code: 'vol24h', name: '24小时成交量', value: "¥1937.96亿", change: '', href: '/pages/charts' },
        { code: 'volTotal', name: '总市值', value: "¥33040.80亿", change: 'down', href: '/pages/charts' },
        { code: 'gbi', name: 'GBI指数', value: "14324.07", change: 'up', href: '/pages/gbi' }
      ]
    }
  },
  components: {
    'nav-login': ShareNavLogin
  }
}
</script>
