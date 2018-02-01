<style>
.linksgroud {
  overflow: hidden;
  margin-top: 20px
}

.linksgroud ul {
  width: 1060px;
  float: left;
  margin-top: 10px
}

.linksgroud ul li {
  border-top: 0;
  border-left: none;
  float: left;
  margin-right: 20px;
  margin-bottom: 15px
}

.linksgroud ul li a {
  color: #666;
  text-decoration: none
}

.linksgroud ul li a:hover {
  color: #3499da
}

.linksgroud .tit {
  padding: 10px 0;
  float: left;
  margin-right: 10px;
  font-weight: 900;
  color: #3499da
}

.linksgroud ul {
  width: 1100px;
  float: left
}
</style>  

<template>
  <div>
    <div class="m30"></div>
    <div class="w1200">
      <div class="col">
        <danghang-1></danghang-1>
        <danghang-2></danghang-2>
        <danghang-3></danghang-3>
        <danghang-4></danghang-4>
        <danghang-5></danghang-5>
        <danghang-6></danghang-6>
        <div class="box box1200" v-for="section of sections">
          <div class="boxTit">
            <h2>{{section.name}}</h2>
          </div>
          <div class="boxContain">
            <div class="linksgroud" v-for="group of section.groups">
              <div class="tit">{{group.name}}</div>
              <ul class="group">
                <li v-for="link of group.links">
                  <a :href="link.href" target="_blank" rel="nofollow">{{link.title}}</a>
                </li>
              </ul>
            </div>
            <div class="m15"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Danghang1 from '@/components/daohangs/daohang.1'
import Danghang2 from '@/components/daohangs/daohang.2'
import Danghang3 from '@/components/daohangs/daohang.3'
import Danghang4 from '@/components/daohangs/daohang.4'
import Danghang5 from '@/components/daohangs/daohang.5'
import Danghang6 from '@/components/daohangs/daohang.6'

export default {
  components: {
    'danghang-1': Danghang1,
    'danghang-2': Danghang2,
    'danghang-3': Danghang3,
    'danghang-4': Danghang4,
    'danghang-5': Danghang5,
    'danghang-6': Danghang6
  },
  data () {
    return {
      sections: [
        {
          name: '挖矿教程',
          groups: [
            {
              name: '矿池大全',
              links: [
                { href: 'https://bixin.com/common/pool_landing', title: '币信矿池' },
                { href: 'http://ghash.io/', title: 'ghash.io' },
                { href: 'http://p2pool.in/', title: 'p2pool.info' },
                { href: 'https://www.f2pool.com/', title: 'f2pool.com' },
                { href: 'https://eligius.st/~gateway/', title: 'eligius.st' },
                { href: 'https://metabank.ru/pool', title: 'metabank.ru'},
                { href: 'https://bitminter.com/', title: 'bitminter.com'},
                { href: 'https://www.bw.com/', title: 'BW'},
                { href: 'https://slushpool.com/home/', title: 'slushpool'}
              ]
            },
            {
              name: '挖矿统计',
              links: [
                { href: 'http://bitcoindifficulty.com', title: '难度与算力曲线' },
                { href: 'https://www.coinchoose.com/', title: 'coinchoose收益' },
                { href: 'https://alloscomp.com/bitcoin/calculator', title: '挖矿收益计算器' },
                { href: 'https://en.bitcoin.it/wiki/Mining_hardware_comparison', title: '显卡挖矿速度表' }
              ]
            },
            {
              name: '挖矿教程',
              links: [
                { href: 'https://slushpool.com/home/', title: 'Slush矿池创世贴' }
              ]
            },
            {
              name: '挖矿行业',
              links: [
                { href: 'https://www.kncminer.com/', title: 'KnCminer' },
                { href: 'http://minr.info/', title: 'ASIC各家矿机追踪' },
                { href: 'https://www.butterflylabs.com/', title: '蝴蝶矿机官网' },
                { href: 'https://www.bw.com/b9/2', title: 'BW币计划' },
                { href: 'https://cex.io/', title: 'CEX' }
              ]
            }
          ]
        }
      ]
    }
  }
}
</script>
