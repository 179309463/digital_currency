<style>
.artList {
  padding: 10px 0
}

.artList li>a, .artList2 li {
  display: block;
  height: 40px;
  line-height: 40px;
  color: #333
}

.artList li .tit {
  display: inline-block;
  width: calc(100% - 95px);
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis
}

.artList img {
  vertical-align: middle;
  margin-right: 3px
}

.artList li .time {
  display: inline-block;
  white-space: nowrap;
  width: 80px;
  float: right;
  color: #999
}

.artList li a:hover span {
  color: #3499da
}
</style>

<template>
  <div class="box box325">
    <div class="boxTit">
      <h2>各大交易所最新公告</h2>
      <a href="exchange/notice/index.html" target="_blank" class="more" title="更多"></a>
    </div>
    <div class="boxContain" style="height: 200px;overflow: hidden;padding-buttom:10px" id="artList">
      <ul class="artList" style="padding: 0">
        <li>
          <a href="https://news.kucoin.com/trade-io%E4%BA%8E2018%E5%B9%B41%E6%9C%8823%E6%97%A5%E4%B8%8A%E7%BA%BFkucoin/" target="_blank" rel="nofollow" title="【库币网】trade.io于2018年1月23日上线KuCoin!">
            <span class="tit">
              <img src="https://static.eastcoinbay.com/PlatImages/20171012/abe6f121516549289e5e629f0e7b0afb_15_15.png" alt="trade.io于2018年1月23日上线KuCoin!">trade.io于2018年1月23日上线KuCoin!</span>
            <span class="time">01-23 21:12</span></a>
        </li>
      </ul>
      <ul class="artList" style="padding: 0">
        <li>
          <a href="https://www.uncoinex.com/news/detail/84" target="_blank" rel="nofollow" title="【澳洲U网】Arts净买入排名送豪礼阶段排名公布">
            <span class="tit">
              <img src="https://static.eastcoinbay.com/PlatImages/20171025/c05793356a1746829cfae32a4b32d64b_15_15.png" alt="Arts净买入排名送豪礼阶段排名公布">Arts净买入排名送豪礼阶段排名公布</span>
            <span class="time">01-23 18:24</span></a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import $ from 'jquery'

export default {
  name: 'ExchangeNoticeIndex',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}

$(function(){
  var mun = 0;
  var scroll1 = null;
  function scroll() {
    scroll1 = setInterval(function() {
      mun--;
      $('.artList').eq(0).css('margin-top', mun + 'px');
      if (mun == -200) {
        $('.artList').eq(0).appendTo('#artList');
        $('.artList').css('margin-top', '0');
        setTimeout(function() {
          mun = 0;
          clearInterval(scroll1);
          scroll()
        }, 75)
      }
    }, 80)
  }
  scroll();
  $('.artList').mouseover(function() {
    clearInterval(scroll1);
  });
  $('.artList').mouseout(function() {
    scroll()
  })
});
</script>