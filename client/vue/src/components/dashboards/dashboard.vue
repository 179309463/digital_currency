<style scoped>
section {
  padding: 15px 0
}

section p {
  line-height: 25px;
  margin-bottom: 15px
}

section p>img {
  max-width: 100%;
  display: block;
  margin: 0 auto
}

section h1,
section h2,
section h3,
section h4 {
  font-size: 18px;
  margin-bottom: 15px
}

section img {
  clear: both;
  display: block;
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  height: auto !important;
  max-width: 100% !important;
  width: auto !important
}
</style>      

<template>
  <div>
    <dashboard-header :title="title" :title_en="title_en"></dashboard-header>
    <div class="m30"></div>
    <div class="w1200">
      <div class="col">
        <div class="box box860" style="background: none;border-right:1px solid #ddd ">
          <div class="boxContain">
            <section style="min-height: 700px;">
              <slot></slot>
            </section>
          </div>
        </div>
        <div class="box box325" style="background: none;width: 234px;">
          <div class="boxContain">
            <div class="m15"></div>          
            <dashboard-nav></dashboard-nav>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import PageDashboardHeader from '@/components/dashboards/dashboard.header'
import PageDashboardNav from '@/components/dashboards/dashboard.nav'

export default {
  props: {
    title: String,
    title_en: String
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  components: {
    'dashboard-header': PageDashboardHeader,
    'dashboard-nav': PageDashboardNav
  }
}
</script>