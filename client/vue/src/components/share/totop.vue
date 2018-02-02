<style scoped>
.totop {
  position: fixed;
  right: calc(50% - 660px);
  bottom: 50px;
  z-index: 9999;
  transition: all .3s
}

@media screen and (max-width:1400px) {
  .totop {
    right: 15px
  }

}

.totop>div {
  height: 40px;
  width: 40px;
  background: #fff;
  margin-bottom: 5px
}

.wCat2 {
  background: #fff url("/static/images/weCat2.png") 5px 5px no-repeat !important;
  display: block;
  width: 40px;
  height: 40px
}

.wCat2:hover {
  background: #3499da url("/static/images/weCat2.png") -35px 5px no-repeat !important
}

.qq2 {
  background: #fff url("/static/images/qq2.png") 5px 5px no-repeat !important;
  display: block;
  width: 40px;
  height: 40px;
  margin-bottom: 5px
}

.qq2:hover {
  background: #3499da url("/static/images/qq2.png") -35px 5px no-repeat !important
}

.sina2 {
  background: #fff url("/static/images/sina2.png") 5px 5px no-repeat !important;
  display: block;
  width: 40px;
  height: 40px;
  margin-bottom: 5px
}

.sina2:hover {
  background: #3499da url("/static/images/sina2.png") -32px 5px no-repeat !important
}

.totop .top {
  background: #fff url("/static/images/top2.png") 5px 5px no-repeat !important
}

.totop .top:hover {
  background: #3499da url("/static/images/top2.png") -32px 5px no-repeat !important
}

.totop>div img {
  width: 116px;
  height: 116px;
  display: block;
  float: left;
  margin-right: 5px
}

.totop>div .detal {
  position: absolute;
  top: 0;
  right: 45px;
  background: #3499da;
  padding: 5px;
  padding-right: 0;
  display: none;
  width: 242px
}
.totop>.qq2 .detal {
  position: absolute;
  top: 0;
  right: 45px;
  background: #3499da;
  padding: 5px;
  padding-right: 0;
  display: none;
  width: 180px;
  padding-top: 10px;
  text-align: center
}

.totop>.qq2 .detal img {
  margin-top: -1px;
  margin-left: -1px
}

.totop>.qq2 .detal p {
  margin-bottom: 5px;
  color: #fff
}

.totop>.qq2 .detal p a {
  display: inline-block;
  width: 77px;
  height: 22px;
  overflow: hidden;
  border-radius: 3px;
  vertical-align: -5px
}
</style>

<template>

  <div class="totop">
    <div class="wCat2">
      <div class="detal">
        <img src="/static/images/fwh.jpg" alt="东方币湾微信服务号">
        <img src="/static/images/wxdyh.png" alt="币联社公众号">
        <div style="text-align: center;width: 116px;float: left;color: #fff">东方币湾微信服务号</div>
        <div style="text-align: center;width: 116px;float: left;color: #fff">币联社公众号</div>
      </div>
    </div>
    <a class="qq2" href="#" target="_blank"></a>
    <a class="sina2" href='#' target='_blank'></a>
    <div class="top"></div>
  </div>

</template>

<script>
import $ from 'jquery'

export default {
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}

// 返回顶部
function totop () {
  $(window).scroll(function () {
    if ($(window).scrollTop() > $(document).height() - 100 - $(window).height()) {
      $('.totop').css('bottom', '150px')
    } else {
      $('.totop').css('bottom', '50px')
    }
  })
  $('.totop .top').click(function () {
    $('body,html').animate({ scrollTop: 0 }, 500)
  })
}

$(function () {
  totop()

  $('.totop>div').hover(function () {
    $(this).find('.detal').fadeIn('fast')
  }, function () {
    $(this).find('.detal').hide()
  })
})
</script>
