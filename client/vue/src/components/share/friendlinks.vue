<style scoped>
.fLink {
    background: #d8d8d8;
    padding: 15px;
    color: #b2b2b2;
    box-shadow: 1px 1px 3px #ccc;
    z-index: 99;
    position: relative
}

.fLink h3 {
    font-size: 16px;
    font-weight: normal;
    color: #777
}

.fLink a {
    margin-top: 10px;
    margin-right: 15px;
    color: #777;
    display: inline-block
}

.fLink a:hover {
    color: #3499da;
    text-decoration: none
}
</style>

<template>

    <div class="fLink clear">
      <div class="w1200">
        <h3>友情链接</h3>
        <a :key="link.href" :href="link.href" :title="link.title" target="_blank" v-for="link of links">{{link.title}}</a>
      </div>
    </div>

</template>

<script>
export default {
  data () {
    return {
      links: [
        {href: 'http://www.bitett.com', title: '比特头条'},
        {href: 'http://www.haoqkl.cn', title: '好区块链'},
        {href: 'http://www.coingogo.com/', title: '币源社区'},
        {href: 'http://www.bcex.ca/', title: 'BCEX'},
        {href: 'http://uncoinex.com/', title: '澳洲U网'},
        {href: 'http://www.bibox.com/', title: 'Bibox'},
        {href: 'http://www.btctrade.im/', title: '比特币交易网'},
        {href: 'http://www.bixingxing.com', title: '比特币导航'},
        {href: 'http://www.linkcoin.pro/', title: 'linkcoin'},
        {href: 'http://topbtc.com/', title: 'TopBtc'},
        {href: 'http://www.qukuaiwang.com.cn', title: '区块网'},
        {href: 'http://www.lun.bi/', title: '论币'},
        {href: 'http://www.block123.com/', title: '区块链导航'},
        {href: 'http://www.weilaicaijing.com/', title: '未来财经'},
        {href: 'https://www.epay.com', title: '易派支付'}
      ]
    }
  }
}
</script>
