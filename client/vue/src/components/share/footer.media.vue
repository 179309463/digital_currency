<style scoped>
.media {
  float: right;
  margin-top: 5px;
  z-index: 999;
  position: relative
}
.media .detal {
  padding: 5px;
  position: absolute;
  left: 0;
  margin-top: -140px;
  margin-left: -40px;
  background: #3499da;
  display: none
}

.media img {
  display: block
}

.media div:hover .detal {
  display: block
}

.weCat, .sina, .qq {
  height: 50px;
  width: 50px;
  margin-left: 20px;
  display: inline-block;
  position: relative
}

.weCat {
  background: url("/static/images/weCat.png")
}
.weCat:hover {
  background: url("/static/images/weCat_a.png")
}

.sina {
  background: url("/static/images/sina.png")
}
.sina:hover {
  background: url("/static/images/sina_a.png")
}

.qq {
  background: url("/static/images/qq.png")
}
.qq:hover {
  background: url("/static/images/qq_a.png")
}
</style>

<template>
  <div class="media">
    <div class="weCat">
      <div class="detal">
        <img src="/static/images/fwh.jpg" alt="东方币湾微信公众号" width="120" height="120"/>
      </div>
    </div>
    <a class="qq" href="#" target="_blank"></a>
    <a class="sina" href='#' target='_blank'></a>
  </div>
</template>
