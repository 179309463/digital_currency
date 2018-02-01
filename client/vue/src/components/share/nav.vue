<style scoped>
nav li {
  margin-top: 5px
}
nav {
  top: 0;
  left: 0;
  right: 0;
  position: fixed;
  box-shadow: 2px 2px 3px #eaecef;
  height: 115px;
  background: #fff;
  transition: all .5s;
  z-index: 999999
}

nav:after {
  content: '';
  height: 1px;
  width: 100%;
  display: block;
  visibility: hidden;
  clear: both;
}

nav a {
  color: #333;
  text-decoration: none !important
}
.navsub {
  height: 30px;
  line-height: 30px;
  border-bottom: 1px solid #ddd;
  background: #f1f1f1
}

.navsub {
  color: #666;
  font-size: 13px
}

.navsub a {
  color: #2d93ca
}

.navsub .rightSise a {
  vertical-align: -5px
}

.navsub .text-green:after {
  content: url("/static/images/arrow-u3.svg")
}

.navsub .text-red:after {
  content: url("/static/images/arrow-d4.svg")
}

.minWidth {
  min-width: 1200px;
  width: 1200px;
  margin: 0 auto
}
.minWidth:after {
  content: '';
  display: block;
  width: 100%;
  clear: both
}

.rightNav {
  float: right;
  transition: all .4s
}

.rightNav li {
  height: 70px;
  line-height: 70px;
  margin-right: 15px
}
</style>

<template>
  <nav>
    <div class="navsub">
      <nav-top></nav-top>
    </div>
    <div class="minWidth">
      <nav-left></nav-left>
      <ul class="rightNav">
        <nav-search></nav-search>
        <nav-market></nav-market>
      </ul>
    </div>
  </nav>
</template>

<script>
import ShareNavLeft from '@/components/share/nav.left'
import ShareNavMarket from '@/components/share/nav.market'
import ShareNavSearch from '@/components/share/nav.search'
import ShareNavTop from '@/components/share/nav.top'

export default {
  components: {
    'nav-top': ShareNavTop,
    'nav-left': ShareNavLeft,
    'nav-market': ShareNavMarket,
    'nav-search': ShareNavSearch
  }
}
</script>
