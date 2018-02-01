<style scoped>
.banner {
	width: 325px;
	background: #ddd;
	height: 90px;
	overflow: hidden;
	position: relative
}

.banner a {
	display: block;
	width: 325px;
	height: 90px;
	float: left
}

.bannerIner {
	width: 975px;
	height: 90px;
	overflow: hidden
}

.bannerPoin {
	height: 0;
	position: absolute;
	width: 100%;
	top: 50%;
	margin-top: -20px
}

.bannerPoin i {
	display: block;
	width: 20px;
	height: 40px;
	font-style: normal;
	line-height: 40px;
	text-align: center;
	background: #fff url("/static/more.svg") no-repeat center;
	color: #fff;
	opacity: 0;
	cursor: pointer
}

.bannerPoin i:first-child {
	float: left;
	-moz-transform: scaleX(-1);
	-webkit-transform: scaleX(-1);
	-o-transform: scaleX(-1);
	transform: scaleX(-1);
	filter: fliph
}

.bannerPoin i:last-child {
	float: right
}

.banner:hover .bannerPoin i {
	opacity: 1
}

#spread2 {
	position: relative
}

#spread2:after {
	content: url("/static/mark.png");
	position: absolute;
	right: 0;
	bottom: 0;
	height: 14px
}
</style>

<template>
	<div class="box box325">
	  <div class="banner">
	    <div class="bannerIner">
	      <a href="#" id="spread2" target="_blank" page="1">
	      	<img src="/static/home_fxhrobot.png">
	      </a>
	    </div>
	    <div class="bannerPoin"></div>
	  </div>
	</div>
</template>

<script>
export default {
  name: 'ShareBanner1',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>
