<style scoped>
.cLink {
  display: block;
  height: 50px;
  background: #fff url('/static/images/cLink.png') no-repeat;
  width: 107px
}

.linksList {
  margin-right: -5px;
  margin-left: -5px;
  overflow: hidden;
  background: url("/static/images/loading.gif") center no-repeat;
  min-height: 203px
}

.linksList li {
  float: left;
  width: calc((100% - 2px) / 3);
  border-bottom: 1px solid #eaecef
}

.linksList li:nth-child(3n-1) {
  border-left: 1px solid #eaecef;
  border-right: 1px solid #eaecef
}

.linksList li a {
  display: block;
  height: 50px;
  line-height: 50px;
  text-align: center;
  transition: all .3s
}

.linksList li a:hover {
  background-color: #ddd
}

.linksList li a img {
  height: 40px;
  margin-top: 5px
}

.linksList li:nth-last-child(1), .linksList li:nth-last-child(2), .linksList li:nth-last-child(3) {
  border-bottom: 0
}  
</style> 

<template>
  <div class="box box325">
    <div class="boxTit">
      <h2>网址导航</h2>
      <router-link :to="{name: 'Daohang'}" class="more" title="更多"></router-link>
    </div>
    <div class="boxContain">
      <ul class="linksList">
        <li>
          <a href="https://www.huobi.pro/" target="_blank" title="火币网" style="background-position:-108px 0px" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.binance.com" target="_blank" title="币安" style="background-position:0px -50px" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.okex.com/?channelId=1162544" target="_blank" title="OK国际" style="background-position:0px 0px" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.bibox.com/" target="_blank" title="Bibox" style="background-position: 0px  -290px;" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.fatbtc.com/" target="_blank" title="胖比特" style="background-position: -109px  -290px;" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.qunbi.pro" target="_blank" title="群币网" style="background-position: -216px  -290px;" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.btc98.com" target="_blank" title="BTC98" style="background-position: -0px  -340px;" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.bitcitys.com/" target="_blank" title="BitCitys币城" style="background-position:-109px -340px" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.zb.com/" target="_blank" title="ZB.com" style="background-position: -109px  -240px" class="cLink"></a>
        </li>
        <li>
          <a href="https://www.exx.com/" target="_blank" title="EXX.com" style="background-position: -216px  -240px" class="cLink"></a>
        </li>
        <li>
          <a href="http://wpa.qq.com/msgrd?v=3&uin=2409859098&site=qq&menu=yes" target="_blank" title="商务合作：2409859098" style="background-position:-108px -190px" class="cLink"></a>
        </li>
        <li>
          <a href="http://wpa.qq.com/msgrd?v=3&uin=2409859098&site=qq&menu=yes" target="_blank" title="商务合作：2409859098" style="background-position:-108px -190px" class="cLink"></a>
        </li>              
      </ul>
    </div>
  </div>
</template>