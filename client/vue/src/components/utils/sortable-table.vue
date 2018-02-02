<style>
table tr td a.price.text-red:after,
table  tr td .tprice.text-red:after {
  content: url('/static/images/arrow-d4.svg')
}

table tr td a.price.text-green:after,
table  tr td .tprice.text-green:after {
  content: url('/static/images/arrow-u3.svg')
}
table .tags-green, table .tags-red {
  margin-left: 0
}
</style>

<template>
	<table class="table">
		<slot></slot>
	</table>
</template>

<script>
import Tablesort from 'tablesort'

export default {
	mounted () {
		Tablesort(this.$el)
	}
}
</script>
