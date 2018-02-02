<style scoped>
nav .leftNav {
  float: left;
  height: 40px;
  transition: all .4s;
}

nav .leftNav>li>a,
nav .leftNav>li {
  display: block;
  float: left;
  height: 70px;
  line-height: 70px;
  padding: 0 15px;
  position: relative;
  transition: all .4s;
}

nav .leftNav li:hover a {
  color: #3499da;
}

nav .leftNav li.logo {
  margin-right: 15px;
}

nav .leftNav li.logo img {
  height: 40px;
  vertical-align: middle;
}

nav .leftNav li.logo {
  padding-left: 0;
  margin-right: 0;
}

nav .leftNav>li>a {
  padding: 0;
}

nav .logo a {
  padding: 0 !important;
}

.subNav {
  background: #fff;
  position: absolute;
  left: 0;
  border: 1px solid #eaecef;
  border-radius: 5px;
  display: none;
  transition: all .4s;
  box-shadow: 1px 1px 1px #eaecef;
}

.subNav li a {
  display: block;
  float: none !important;
  padding: 3px 10px;
  min-width: 73px;
  line-height: 25px !important;
  white-space: nowrap;
  color: #333 !important;
  transition: all .1s;
}

.subNav li a:hover {
  background: #3499da;
  color: #fff !important;
}

.navSlide:after, .slideBtn button:after {
  content: url("/static/images/arrow-d.png");
}

.navSlide:hover, nav .leftNav li:hover {
  font-weight: 500;
  cursor: pointer;
  color: #3499da;
}

.navSlide:hover .subNav {
  display: block;
}

</style>

<template>
  <ul class="leftNav">
    <li class="logo">
      <a href="index.html">
        <img src="/static/images/logo.png" alt="东方币湾的Logo">
      </a>
    </li>
    <li :class="{'navSlide':menu.submenus}" v-for="menu of menus" :key="menu.title">
      <template v-if="menu.submenus">
        {{menu.title}}
        <ul class="subNav">
          <li v-for="submenu of menu.submenus" :key="submenu.title">
            <a :href="submenu.href">{{submenu.title}}</a>
          </li>
        </ul>
      </template>
      <template v-else>
        <a :href="menu.href">{{menu.title}}</a>
      </template>
    </li>
  </ul>
</template>

<script>
export default {
  data () {
    return {
      menus: [
        { title: '行情', href: '', submenus: [
            { title: '所有', href: '/' },
            { title: '货币', href: '/currencies' },
            { title: '代币', href: '/currencies' },
            { title: '最新上市', href: '/currency_newests' },
            { title: '概念行情', href: '/concepts' },
            { title: '市值趋势', href: '/pages/charts' }
        ]},
        { title: '排行榜', href: '', submenus: [
            { title: '涨跌幅排行榜', href: '/currency_maxchanges' },
            { title: '24小时成交额排行(币种)', href: '/currency_vols' },
            { title: '24小时成交额排行(交易平台)', href: '/exchange_vols' },
            { title: '月成交额排行', href: '/currency_ranks' }
        ]},
        { title: '交易平台', href: '/exchanges' },
        { title: 'APP', href: '/pages/app' }
      ]
    }
  }
}
</script>
