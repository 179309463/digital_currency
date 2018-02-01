<style scoped>
footer {
  background: #d8d8d8;
  padding: 15px;
  left: 0;
  right: 0
}

footer:after {
  content: '';
  display: block;
  width: 100%;
  clear: both
}

footer .logo2 {
  margin-top: 5px;
  display: inline-block;
  float: left
}

footer .info {
  float: left;
  margin-left: 30px;
  margin-top: 10px
}

footer a:hover {
  color: #3499da !important;
  text-decoration: none
}

footer .info a, footer .info p, footer .info i {
  color: #777
}

.space2:before {
  content: '|';
  margin: 0 5px;
  font-style: normal
}
</style>

<template>
  <footer class="clear">
    <div class="w1200">
      <a class="logo2" href="index.html">
        <img src="/static/images/logo.png" alt="东方币湾的Logo">
      </a>
      <div class="info">
        <div>
          <router-link :to="{name: 'DashboardAboutus'}">关于我们</router-link>
          <i class="space2"></i>
          <router-link :to="{name: 'DashboardContact'}">联系我们</router-link>
          <i class="space2"></i>
          <router-link :to="{name: 'DashboardFaq'}">常见问题</router-link>
          <i class="space2"></i>
          <router-link :to="{name: 'DashboardDeclare'}">免责声明</router-link>
          <i class="space2"></i>
          <a href="#">访问手机版</a>
        </div>
        <div>
          <p>©Copyright eastcoinbay.com 2018 | 备案号：<a href="#" target="_blank">粤ICP备16116847号-8</a></p>
        </div>
      </div>
      <footer-media></footer-media>
    </div>
  </footer>
</template>

<script>
import FooterMedia from '@/components/share/footer.media'

export default {
  components: {
    'footer-media': FooterMedia
  }
}
</script>
