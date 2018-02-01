<style>
.tabTit-a {
  width: 100%;
  padding: 5px 0;
  overflow: hidden;
}

.tabTit-a li:last-child {
  margin-right: 0;
}

.tabTit-a li {
  display: block;
  cursor: pointer;
  float: left;
  padding: 5px 10px;
  border: 1px solid #f1f1f1;
  width: 79px;
  text-align: center;
  transition: all .2s;
  margin-bottom: 5px;
  margin-right: 5px;
}

.tabTit-a li:hover,
.tabTit-a li.active {
  color: #fff;
  background: #3499da;
  border-color: #3499da
}
</style>

<template>
  <div class="tabBody padding5" style="height:385px">
    <ul class="tabTit-a" id="maxchange_down">
      <li :class="{active:type=='hour'}" @click="toggle('hour')">1小时</li>
      <li :class="{active:type=='day'}" @click="toggle('day')">24小时</li>
      <li :class="{active:type=='week'}" @click="toggle('week')">1周</li>
    </ul>
    <tab-table v-show="type=='hour'"></tab-table>
    <tab-table v-show="type=='day'"></tab-table>
    <tab-table v-show="type=='week'"></tab-table>
    <div class="m15"></div>
  </div>
</template>

<script>
import ExchangeMaxchangeIndexTabTable from '@/components/exchange_maxchanges/index.tab.table'

export default {
  data () {
    return {
      type: 'hour'
    }
  },
  methods: {
    toggle: function(type) {
      this.type = type
    }
  },
  components: {
    'tab-table': ExchangeMaxchangeIndexTabTable
  }
}
</script>