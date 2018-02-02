<style>
.table-rank tr td:first-child span {
  display: inline-block;
  padding: 0 6px;
  height: 20px;
  background: #ccc;
  border-radius: 3px;
  text-align: center;
  vertical-align: middle;
  line-height: 20px;
  color: #fff
}

.table-rank tr:nth-child(1) td:nth-child(1) span {
  background: #3499da
}

.table-rank tr:nth-child(2) td:nth-child(1) span {
  background: #3499da;
  opacity: .8
}

.table-rank tr:nth-child(3) td:nth-child(1) span {
  background: #3499da;
  opacity: .5
}
.table-rank tbody tr td:first-child span {
  margin-left: 5px
}

.table-rank thead tr th:first-child {
  padding-left: 10px
}

.maxchange {
  background: #fff !important
}
</style>

<template>
  <table class="table table-rank noBg maxchange">
    <thead>
      <tr>
        <th>排名</th>
        <th>名称</th>
        <th>价格</th>
        <th>涨幅</th></tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <span>1</span></td>
        <td>
          <a href="/currencies/zzm/">
            <img src="/static/images/currency.png" alt="ZZM">ZZM
          </a>
        </td>
        <td>¥2.02</td>
        <td>
          <span class="text-red">-100%</span>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  data () {
    return {

    }
  }
}
</script>
