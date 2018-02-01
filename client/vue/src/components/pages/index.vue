<style scoped>

</style>

<template>
  <div>
    <div class="m30"></div>
    <share-advertisement></share-advertisement>

    <div class="m15"></div>

    <div class="w1200">
      <div class="col">
        <currency-index></currency-index>

        <exchange-notice-index></exchange-notice-index>
        <share-banner1></share-banner1>
        <exchange-maxchange-index></exchange-maxchange-index>
        <%= render "concepts/index.hot" %>
        <share-banner2></share-banner2>
        <%= render "share/vol" %>
        <%= render "currency_newests/index" %>
        <%= render "pages/daohang" %>
      </div>
    </div>
  </div>
</template>

<script>
import ShareAdvertisement from '@/components/share/advertisement'
import ShareBanner1 from '@/components/share/banner1'
import ShareBanner2 from '@/components/share/banner2'
import CurrencyIndex from '@/components/currencies/index'
import ExchangeNoticeIndex from '@/components/exchange_notices/index'
import ExchangeMaxchangeIndex from '@/components/exchange_maxchanges/index'

export default {
  name: 'PagesIndex',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    'share-advertisement': ShareAdvertisement,
    'share-banner1': ShareBanner1,
    'share-banner2': ShareBanner2,
    'currency-index': CurrencyIndex,
    'exchange-notice-index': ExchangeNoticeIndex,
    'exchange-maxchange-index': ExchangeMaxchangeIndex,
  }
}
</script>
