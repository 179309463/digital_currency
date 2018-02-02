<style scoped>
section {
  height: 120px;
  background: url('/static/images/post.jpg');
  background-size: 100%;
  line-height: 120px
}

section h1 {
  color: #fff;
  display: inline-block
}

section span {
  color: #fff
}
</style>

<template>
  <section>
    <div class="w1200">
      <div class="boxContain">
        <h1>{{title}}</h1>
        <span>{{title_en}}</span>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: {
    title: String,
    title_en: String
  }
}
</script>
