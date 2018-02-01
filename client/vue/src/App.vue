<style scoped>

</style>

<template>
  <div id="app">
    <share-nav></share-nav>
    <div class="m30"></div>

    <router-view/>

    <div class="m30"></div>
    <share-friendlinks></share-friendlinks>
    <share-footer></share-footer>
    <share-totop></share-totop>

    <share-outerwindow></share-outerwindow>
  </div>
</template>

<script>
import ShareNav from '@/components/share/nav'
import ShareFooter from '@/components/share/footer'
import ShareFriendlinks from '@/components/share/friendlinks'
import ShareTotop from '@/components/share/totop'
import ShareOuterwindow from '@/components/share/outerwindow'

export default {
  name: 'App',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    'share-nav': ShareNav,
    'share-footer': ShareFooter,
    'share-friendlinks': ShareFriendlinks,
    'share-totop': ShareTotop,
    'share-outerwindow': ShareOuterwindow
  }
}
</script>
