<style scoped>
.line {
  display: none !important
}
</style>

<template>
  <span class="line">{{data.join(",")}}</span>
</template>

<script>
import $ from 'jquery'
import 'peity/jquery.peity'

export default {
	props: {
		data: Array
	},
	mounted() {
	  $(this.$el).peity('line', {
	    width: 50,
	    height: 15,
	    fill: '#f5f5f5',
	    min: 99999,
	    strokeWidth: 1
	  })
	}
}
</script>