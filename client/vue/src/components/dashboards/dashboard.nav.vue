<style scoped>
ul li {
  margin-bottom: 20px
}
</style>

<template>
  <ul>
    <li>
      <router-link :to="{name: 'DashboardAboutus'}">关于我们</router-link>
    </li>
    <li>
      <router-link :to="{name: 'DashboardContact'}">联系我们</router-link>
    </li>
    <li>
      <router-link :to="{name: 'DashboardFaq'}">常见问题</router-link>
    </li>
    <li>
      <router-link :to="{name: 'DashboardDeclare'}">免责声明</router-link>
    </li>
  </ul>
</template> 