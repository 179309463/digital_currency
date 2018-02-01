<style scoped>
.searchForm {
  position: relative;
  margin-right: 0 !important;
}

.searchForm input {
  width: 200px;
  height: 22px;
  padding: 3px 10px;
  padding-right: 30px;
  border-radius: 25px;
  border: 1px solid #eaecef;
  outline: 0;
  color: #999
}

.searchForm .icon-search {
  position: absolute;
  right: 15px;
  top: 3px
}

.searchForm .icon-search:before {
  content: url("/static/images/search.svg")
}

.searchForm form {
  position: relative;
  display: block;
  height: 30px;
  line-height: 30px;
  margin-top: 20px;
}

.searchForm .icon-search {
  display: inline-block;
  height: 28px;
  font-style: normal;
  top: 2px;
  width: 40px;
  right: 0;
  cursor: pointer;
}

.searchForm .icon-search:before {
  margin-left: 10px;
  margin-top: 5px;
}

.searchForm2 {
  float: right
}

.searchForm2 input {
  width: 0 !important;
  height: 20px;
  border: 0;
  border-bottom: 1px solid #ddd;
  border-radius: 0;
  transition: all .3s;
  padding: 3px 0
}

.searchForm2 .icon-search {
  position: relative;
  right: 0
}

.searchForm2 input.open {
  width: 260px !important;
  padding: 3px 10px;
  padding-right: 30px
}

.searchForm2 form{
    margin-top: 0;
}

.autocomplete {
  position: absolute;
  border: 1px solid #eaecef;
  background: #fff;
  overflow: hidden;
  max-width: 250px;
  z-index: 999999;
  box-shadow: 2px 2px 3px #999
}

.autocomplete ul {
  padding: 0;
  margin: 0;
  display: block;
  padding: 5px
}

.autocomplete ul li {
  height: 35px;
  line-height: 35px;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  padding: 0 5px
}

.autocomplete ul li a {
  color: #676a6c;
  text-decoration: none;
  font-size: 14px;
  display: block
}

.autocomplete ul li:hover {
  background: #3499da;
  color: #fff
}

.autocomplete ul li:hover a {
  color: #fff
}

.autocomplete .tit {
  border-bottom: 1px solid #eaecef;
  padding: 5px;
  font-size: 14px;
  font-family: "Microsoft YaHei", sans-serif;
  background: #f1f1f1;
  line-height: normal !important
}

.autocomplete ul li a img {
  margin-right: 5px;
  vertical-align: -2px;
}

.searchBtn {
  display: inline-block;
  cursor: pointer
}

.searchBtn:hover {
  color: #3499da
}
</style>

<template>
  <div class="searchForm searchForm2">
    <form action="">
      <input type="text" id="search2" class="open" placeholder="输入关键词...">
      <i class="icon-search" onclick="search(document.getElementById('search2').value)"></i>
      <span class="searchBtn">搜索</span>
    </form>
  </div>
</template>

<script>
import $ from 'jquery'

export default {
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}

function search (word) {
  if (word === undefined || word === null || word.length < 1 || word.trim().length < 1) {
    // alert('请输入关键词')
    return false
  } else {
    word = word.trim()
    window.location.href = '/currencies/search.html?word=' + encodeURIComponent(word)
  }
}

var con = $('<div class="autocomplete"></div>')
var tit = $('<div class="tit"></div>')
var ul = $('<ul class="datalist"></ul>')
var $li = $('<li><a href=""><img src="" alt=""></a></li>')
function autoComplete (a) {
  a.keyup(function () {
    var q = a.val()
    var url = '/search.json?q=' + q + '&limit=12'
    var ul1 = ul.clone()
    var ul2 = ul.clone()
    var h = '30px'
    var w = parseInt(a.css('width')) + parseInt(a.css('padding-left')) + parseInt(a.css('padding-right')) + 'px'
    var connew = con.clone()
    $.ajax({
      url: url,
      type: 'GET',
      success: function (data) {
        if (data.length !== 0) {
          for (var i = 0; i < data.length; i++) {
            let cell = $li.clone()
            var result = data[i]
            if (result.type === '0') { // 货币
              let img = ''
              if (result.image) { // 是否有小图
                img = '<img src="' + result.image + '">'
              }
              cell.find('a').attr('href', '/currencies/' + result.id + '/').attr('title', result.id).html(img + result.name)
              ul1.append(cell)
            } else { // 市场
              let cell = $li.clone()
              let img = ''
              if (result.image) { // 是否有小图
                img = '<img src="' + result.image + '">'
              }
              cell.find('a').attr('href', '/exchange/' + result.id + '/').attr('title', result.id).html(img + result.name)
              ul2.append(cell)
            }
          }

          if (ul1.find('li').length !== 0) {
            tit.clone().text('货币').appendTo(connew)
            ul1.appendTo(connew)
          }
          if (ul2.find('li').length !== 0) {
            tit.clone().text('市场').appendTo(connew)
            ul2.appendTo(connew)
          }
          $('body').find('.autocomplete').remove()
          var o = a.closest('.searchForm')
          if (!o.hasClass('searchForm2')) {
            h = '55px'
          } else {
            h = '30px'
          }
          connew.css('top', h).css('min-width', w)
          o.append(connew)
        } else {
          $('body').find('.autocomplete').remove()
        }

        $('body').click(function () {
          $('body').find('.autocomplete').remove()
        })
        $('body').find('.autocomplete').find('a').click(function (e) {
          e.stopPropagation()
          a.val($(this).text())
          $('body').find('.autocomplete').remove()
        })
      },
      error: function () {
        return false
      }
    })
  })
}
$(function () {
  autoComplete($('#search2'))

  $('.searchBtn').click(function () {
    var input = $(this).closest('.searchForm2').find('input')
    if (input.hasClass('open')) {
        input.removeClass('open')
    } else {
        input.val('').addClass('open').focus()
    }
  })
})
</script>
