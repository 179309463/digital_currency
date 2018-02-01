<style>
section {
  width: 1205px
}

section > div {
  float: left;
  height: 90px;
  position: relative;
  background: #ddd;
  margin-right: 5px
}

section > div:after {
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

section .col-1 {
  width: 236px
}

section a img {
  width: 100%;
  height: 100%
}

section .col-2 {
  width: 477px
}

section .col-3 {
  width: 713px
}

section .col-4 {
  width: 949px
}

section .col-5 {
  width: 1200px
}
</style>

<template>
  <section style="width: 1205px;margin:0 auto;">
    <div class="col-2" id="headAd01">
      <a href="#" target="_blank">
        <img src="/static/images/vip/huobi_ht.jpg">
      </a>
    </div>
    <div class="col-1" id="headAd03">
      <a href="/pages/app" target="_blank">
        <img src="/static/images/vip/appad.png">
      </a>
    </div>
    <div class="col-2" id="headAd04">
      <a href="#" target="_blank">
        <img src="/static/images/vip/okex_the.jpg">
      </a>
    </div>
  </section>
</template>

