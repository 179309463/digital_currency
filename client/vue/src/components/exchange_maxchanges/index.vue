<style>
.tabTit .more {
  float: right
}

.tabTit .more:before {
  content: url("/static/images/more.svg")
}

.tabTit .more:hover:before {
  content: url("/static/images/more2.svg")
}

.tabTit h3, .tabTit h1, .tabTit h2 {
  display: inline-block;
  float: left;
  height: 40px;
  line-height: 40px;
  font-size: 17px;
  font-weight: normal;
  text-align: center;
  border-top: 3px solid #fff;
  cursor: pointer
}

.tabTit {
  overflow: hidden
}

.tabTit a {
  color: #666 !important
}

.tabTit .active {
  border-top: 3px solid #3499da;
  background: url("/static/images/arrow-d2.svg") center -6px no-repeat
}

.tabTit .active.tit {
  color: #3499da
}

.tabTit .more {
  height: 41px;
  width: 40px;
  margin-top: -10px;
  margin-right: -15px
}

.tabTit .more {
  margin-right: 0;
  margin-top: 0
}

.tabTit .more:before {
  display: block;
  margin-top: 12px;
  margin-left: 10px
}

.tabTit .more {
  margin-right: 15px;
  margin-top: 15px
}
</style>

<template>
  <div class="box box325">
    <div class="tabTit">
      <h3 :class="['tit', {active:type=='up'}]" style="width: 40%" @click="toggle('up')">涨幅榜</h3>
      <h3 :class="['tit', {active:type=='down'}]" style="width: 40%" @click="toggle('down')">跌幅榜</h3>
      <a href="currencies/maxchange.html" target="_blank" class="more" title="更多"></a>
    </div>
    <index-tab v-show="type=='up'"></index-tab>
    <index-tab v-show="type=='down'"></index-tab>
  </div>
</template>

<script>
import ExchangeMaxchangeIndexTab from '@/components/exchange_maxchanges/index.tab'

export default {
  data () {
    return {
      type: 'up'
    }
  },
  methods: {
    toggle: function(type) {
      this.type = type
    }
  },
  components: {
    'index-tab': ExchangeMaxchangeIndexTab
  }
}
</script>