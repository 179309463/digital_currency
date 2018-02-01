<style>

.headAd {
  width: 1205px
}

.headAd>div {
  float: left;
  height: 90px;
  position: relative;
  background: #ddd;
  margin-right: 5px
}

.headAd>div:after {
  content: '广告';
  height: 18px;
  width: 30px;
  text-align: center;
  display: block;
  line-height: 18px;
  font-size: 12px;
  color: #000;
  background: #fff;
  opacity: .5;
  position: absolute;
  bottom: 0;
  right: 0
}

.headAd .col-1 {
  width: 236px
}

.headAd a img {
  width: 100%;
  height: 100%
}

.headAd .col-2 {
  width: 477px
}

.headAd .col-3 {
  width: 713px
}

.headAd .col-4 {
  width: 949px
}

.headAd .col-5 {
  width: 1200px
}
</style>

<template>
  <div id="indexheadad" class="headAd" style="width: 1205px;margin:0 auto;">
    <div class="col-2" id="headAd01">
      <a href="#" target="_blank">
        <img src="/static/vip/huobi_ht.jpg">
      </a>
    </div>
    <div class="col-1" id="headAd03">
      <a href="/pages/app" target="_blank">
        <img src="/static/vip/appad.png">
      </a>
    </div>
    <div class="col-2" id="headAd04">
      <a href="#" target="_blank">
        <img src="/static/vip/okex_the.jpg">
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ShareAdvertisement',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>
