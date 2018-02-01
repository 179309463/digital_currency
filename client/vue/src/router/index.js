import Vue from 'vue'
import Router from 'vue-router'
import PageIndex from '@/components/pages/index'
import DashboardAboutus from '@/components/pages/dashboard.aboutus'
import DashboardContact from '@/components/pages/dashboard.contact'
import DashboardFaq from '@/components/pages/dashboard.faq'
import DashboardDeclare from '@/components/pages/dashboard.declare'
import Daohang from '@/components/pages/daohang'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    { path: '/', name: 'PageIndex', component: PageIndex },
    { path: '/aboutus', name: 'DashboardAboutus', component: DashboardAboutus },
    { path: '/contact', name: 'DashboardContact', component: DashboardContact },
    { path: '/faq', name: 'DashboardFaq', component: DashboardFaq },
    { path: '/declare', name: 'DashboardDeclare', component: DashboardDeclare },
    { path: '/daohang', name: 'Daohang', component: Daohang }
  ],
  scrollBehavior (to, from, savedPosition) {
	  return { x: 0, y: 0 }
  }
})
