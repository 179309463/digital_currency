<style scoped>

.outerWindow {
  width: 450px;
  min-height: 320px;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px #666;
  position: fixed;
  left: 50%;
  margin-left: -250px;
  display: none;
  padding-bottom: 10px
}

.outerWindow .close {
  float: right;
  background: none;
  border: none;
  width: 30px;
  height: 30px;
  color: #666;
  font-size: 30px;
  cursor: pointer;
  overflow: hidden;
  outline: none;
}

.outerWindow .title {
  font-size: 16px;
  color: #999;
  text-align: center;
  position: relative;
  margin-bottom: 10px;
  margin-top: 30px;
}

.outerWindow .title:before {
  content: '';
  border-top: 1px solid #ededed;
  display: block;
  position: absolute;
  width: 50px;
  top: 8px;
  left: 0;
}

.outerWindow .title:after {
  content: '';
  border-top: 1px solid #ededed;
  display: block;
  position: absolute;
  width: 50px;
  top: 8px;
  right: 0;
}

.outerWindow .windowHead {
  width: 100%;
  overflow: hidden;
  height: 30px;
}

.outerWindow form {
  width: 300px;
  display: block;
  margin: 0 auto;
  display: none;
}

.outerWindow form input {
  width: 288px;
  height: 23px;
  padding: 5px;
  border-radius: 5px;
  border: 1px solid #ddd;
  background: #fcfcfc;
  font-size: 14px;
  color: #444;
  outline: none;
}

.outerWindow .alert {
  padding: 0;
  margin: 5px 0;
  color: red;
  font-size: 12px;
  display: none;
}

.outerWindow .btn {
  width: 298px;
  height: 35px;
  border: 1px solid #0043c9;
  border-radius: 5px;
  background: #3273e4;
  color: #fff;
  outline: none;
}

.outerWindow .formItem {
  overflow: hidden;
  width: 100%;
  height: auto;
  margin: 15px 0;
}

.outerWindow a {
  text-decoration: none;
  color: #3273e4;
}

.outerWindow a:hover {
  text-decoration: underline;
}

.outerWindow .links {
  font-size: 13px;
}

.outerWindow .links span {
  float: right;
}

.outerWindow .con {
  width: 300px;
  margin: 0 auto;
  text-align: center;
}

.outerWindow .icon {
  display: inline-block;
  height: 48px;
  width: 48px;
  background: url('/static/icon.svg') no-repeat;
  margin: 0 10px;
  border-radius: 50%;
}

.outerWindow .icon:hover {
  box-shadow: 0 0 5px #999;
}

.outerWindow .con .qq {
  background-position: -82px -2px;
}

.outerWindow .con .xl {
  background-position: -2px -2px;
}

.outerWindow .con .wx {
  background-position: -162px -2px;
}

.outerWindow .hasBtn input {
  width: 167px;
}

.outerWindow .hasBtn {
  display: none;
}

.outerWindow .hasBtn button {
  width: 110px;
  height: 35px;
  border-radius: 5px;
  border: 1px solid #ddd;
  background: #f1f1f1;
  margin-left: 10px;
  outline: none;
}

.outerWindow button:hover {
  opacity: 0.8;
  cursor: pointer;
}

.outerWindow .checkbox {
  color: #3273e4;
  text-decoration: none;
}

.outerWindow  .hasPic input {
  width: 167px;
}

.outerWindow  .hasPic .pic {
  width: 110px;
  height: 35px;
  background: #f1f1f1;
  display: block;
  float: right
}

.outerWindow  .hasPic .pic img {
  width: 100%;
  height: 100%;
}

.outerWindow .checkbox {
  display: inline-block;
  width: 15px;
  height: 15px;
  vertical-align: middle
}

.outerWindow .formItem {
  font-size: 14px;
}

.outerWindow {
  z-index: 9999;
}

.outerWindow .tips {
  width: 300px;
  margin: 0 auto;
  margin-top: 70px;
  text-align: center;
  display: none;
}

.outerWindow .tips i {
  width: 95px;
  height: 95px;
  display: block;
  background: url('/static/success') top center no-repeat;
  margin: 0 auto;
}

.outerWindow .tips .text {
  font-size: 25px;
  margin: 15px 0;
}

.outerWindow .tips button {
  width: 200px;
  height: 30px;
  border: 1px solid #ddd;
  border-radius: 5px;
  background: #f1f1f1;
  color: #333;
  outline: none;
  margin-top: 30px;
}
</style>

<template>
  <div class='outerWindow'>
    <div class='windowHead'>
        <button class='close'>×</button>
    </div>
    <form action='' method='post' class='loginForm' style='display: none'>
      <div class='title'>使用邮箱登陆</div>
      <div class='formItem'>
        <input type='text' class='username' placeholder='输入用邮箱'>
        <p class='alert'></p>
      </div>
      <div class='formItem'>
        <input type='password' class='password' placeholder='输入密码'>
        <p class='alert'></p>
      </div>
      <div class='formItem' style='display:none;'>
        <input type='checkbox' id='rememberme' class='checkbox'  > 记住密码
      </div>
      <div class='formItem'>
        <button class='btn' type='button'>立即登陆</button>
        <p class='alert'>*帐户名或者密码不正确</p>
      </div>
      <div class='links'>
        <a href='' target='_blank' class='findPassword'>忘记密码</a>
        <span>没有帐号？<a rel='nofollow' class='signup'>立即注册</a></span>
      </div>
    </form>
    <form action='' method='post' class='signupForm'>
      <div class='title'>用户注册</div>
      <div class='formItem'>
        <input type='text' class='account' placeholder='输入邮箱地址'>
        <p class='alert'></p>
      </div>
      <div class='formItem'>
        <input type='password' class='setPassword' placeholder='输入密码'>
        <p class='alert'></p>
      </div>
      <div class='formItem'>
        <input type='password' class='rePassword' placeholder='再次输入密码'>
        <p class='alert'></p>
      </div>
      <div class='formItem hasPic'>
        <input type='text' class='imgcode' placeholder='输入右边的验证码'>
        <div class='pic'>
          <img id='verifyImage' style='cursor:hand' height='34' title='点击刷新验证码' onclick='this.src="/user/verifyimage.jpeg?time=" + new Date()' />
        </div>
        <p class='alert'></p>
      </div>
      <div class='formItem hasBtn'>
        <input type='text' class='' placeholder='输入收到的验证码'>
        <button class='getCode' type='button'>获得验证码</button>
        <p class='alert'></p>
      </div>
      <div class='formItem'>
        <button class='btn' type='button'>立即注册</button>
        <p class='alert'>*用户名已存在</p>
      </div>
      <div class='formItem'>
        <div class='links'>已有帐号？<a rel='nofollow' class='login'>立即登陆</a></div>
      </div>
    </form>
    <div class='tips'>
      <i></i>
      <div class='text'>注册成功</div>
      <a rel='nofollow' class='sure'>确定</a>
    </div>
  </div>
</template>

<script>
import $ from 'jquery'

export default {
  name: 'ShareOuterwindowr',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}

// 邮箱验证
function checkEmail (e) {
  var myreg = /^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/
  if (!myreg.test(e)) {
    return false
  } else {
    return true
  }
}
// 帐号验证
function checkAccount () {
  var account = $('.signupForm .account').val()
  if (account.length > 0) {
    if (!checkEmail(account)) {
      $('.account').next('.alert').html('*邮箱格式不正确').css('display', 'block')
      $('.hasBtn').val('').css('display', 'none')
      return false
    } else {
      $('.hasBtn').css('display', 'none').val('')
      return true
    }
  } else {
    $('.account').next('.alert').html('*邮箱不能为空').css('display', 'block')
    $('.hasBtn').val('').css('display', 'none')
    return false
  }
}

function outerWindow (a) {
  var $html = $('.outerWindow')
  $html.find('.findPassword').attr('href', a.findPassword)
  $html.find('.loginForm').attr('action', a.loginUrl)
  $html.find('.signupForm').attr('action', a.signupUrl)
  $html.find('.xl').attr('href', a.xinlang)
  $html.find('.qq').attr('href', a.QQ)
  $html.find('.wx').attr('href', a.weixin)
  // 弹出
  $('body,html').on('click', a.login, function () {
    $('.outerWindow').css('display', 'block').css('top', window.innerHeight / 2 - 200 + 'px')
    $('.outerWindow form').css('display', 'none')
    $('.loginForm').css('display', 'block')
  })
  $('body,html').on('click', a.signup, function () {
    $html.find('#verifyImage').trigger('click')
    $('.outerWindow').css('display', 'block').css('top', window.innerHeight / 2 - 200 + 'px')
    $('.outerWindow form').css('display', 'none')
    $('.signupForm').css('display', 'block')
  })
  // 改变窗口大小
  $(window).resize(function () {
    if ($('.outerWindow').css('display') !== 'none') {
      $('.outerWindow').css('display', 'block').css('top', window.innerHeight / 2 - 200 + 'px')
    }
  })
  // 获得验证码
  var time
  var clo

  $('body').on('click', '.signupForm .getCode', function () {
    clo = 59
    // 插入发送请求的方法
    $('.getCode').attr('disabled', 'disabled').html('(59)获得验证码')
    time = setInterval(clock, 1000)
  })
  function clock () {
    if (clo !== 0) {
      clo = clo - 1
      $('.getCode').html('(' + clo + ')获得验证码')
    } else if (clo === 0) {
      $('.getCode').html('获得验证码').removeAttr('disabled')
      window.clearInterval(time)
    }
  }

  // 关闭
  $('body,html').on('click', '.outerWindow .close', function () {
    $('.outerWindow form').css('display', 'none')
    $('.outerWindow').css('display', 'none')
    $('.signupForm,.loginForm')[0].reset()
    $('.signupForm .hasBtn').css('display', 'none')
  })
  // 是否手机注册
  $('body,html').on('keyup', '.signupForm .account', function () {
    $('.signupForm .account').next('.alert').css('display', 'none')
    checkAccount()
  })

  $('body').on('keyup', '.setPassword', function () {
    checkPwd($('.setPassword').val().trim())
  })

  $('body').on('keyup', '.setPassword', function () {
    checkPwd($('.setPassword').val().trim())
  })

  // 提交注册
  $('body').on('click', '.signupForm .btn', function () {
    $('.signupForm .alert').css('display', 'none')
    var count1 = 0
    if (!checkAccount()) {
      count1 = count1 + 1
    }

    if (!checkPwd($('.setPassword').val().trim())) {
      count1 = count1 + 1
    }
    // 验证密码是否为空
    if ($('.setPassword').val().trim() === '') {
      $('.setPassword').next('.alert').html('*密码不能为空').css('display', 'block')
      count1 = count1 + 1
    }
    // 验证两次输入密码
    if ($('.rePassword').val().trim() === '') {
      $('.rePassword').next('.alert').html('*两次密码输入必须一致').css('display', 'block')
      count1 = count1 + 1
    } else if ($('.rePassword').val().trim() !== $('.setPassword').val()) {
      $('.rePassword').next('.alert').html('*两次密码输入必须一致').css('display', 'block')
      count1 = count1 + 1
    }
    if ($('.imgcode').val().trim() === '') {
      $('.pic').next('p.alert').html('*验证码不能为空').css('display', 'block')
      count1 = count1 + 1
    }

    if (count1 === 0) {
      $('.signupForm .btn').attr('disabled', 'disabled')
      $('.signupForm .btn').html('提交中...')
      var parms = {}
      parms['userid'] = $('.account').val().trim()
      parms['password'] = $('.setPassword').val().trim()
      parms['confirmPwd'] = $('.rePassword').val().trim()
      parms['verifyCode'] = $('.hasPic input').val().trim()
      $.post('/user/post.register', parms, registerResponse)
    } else {
      return false
    }
  })
  // 立即注册
  $('body').on('click', '.outerWindow .signup', function () {
    $('.outerWindow .alert').css('display', 'none')
    $('.outerWindow .loginForm')[0].reset()
    $('.outerWindow .loginForm').css('display', 'none')
    $('.outerWindow .signupForm').css('display', 'block')
  })
  // 立即登陆
  $('body').on('click', '.outerWindow .login', function () {
    $('.outerWindow.alert').css('display', 'none')
    $('.outerWindow .signupForm')[0].reset()
    $('.signupForm .hasBtn').css('display', 'none')
    $('.outerWindow .signupForm').css('display', 'none')
    $('.outerWindow  .loginForm').css('display', 'block')
  })
  // 登陆检测
  $('body').on('click', '.loginForm .btn', function () {
    var cou = 0
    if ($('.loginForm .username').val().trim() === '') {
      $('.loginForm .username').next('.alert').html('*帐号名不能为空').css('display', 'block')
      cou = cou + 1
    }
    if ($('.loginForm .password').val().trim() === '') {
      $('.loginForm .password').next('.alert').html('*密码名不能为空').css('display', 'block')
      cou = cou + 1
    }
    if (cou !== 0) {
      return false
    } else {
      $('.loginForm .btn').attr('disabled', 'disabled')
      $('.loginForm .btn').html('登陆中...')

      var parms = {}
      parms['userid'] = $('.loginForm .username').val().trim()
      parms['password'] = $('.loginForm .password').val().trim()

      parms['isRemember'] = $('#rememberme').is(':checked')
      $.ajax({
        url: '/user/post.login',
        data: parms,
        type: 'post',
        async: true,
        xhrFields: {
          withCredentials: true
        },
        success: function (data) {
          loginResponse(data)
        }
      })
    }
  })
}

// 处理登录的反馈信息
function loginResponse (data) {
  var result = data
  if (result.status === 'success') {
    window.location.reload()
  } else {
    $('.loginForm .btn').next('.alert').html(result.content).css('display', 'block')
  }
  $('.loginForm .btn').removeAttr('disabled')
  $('.loginForm .btn').html('立即登陆')
}

// 处理注册的反馈信息
function registerResponse (data) {
  var result = data
  if (result.status === 'success') {
    $('.outerWindow .signupForm,.outerWindow .loginForm').css('display', 'none')
    $('.outerWindow .tips').css('display', 'block')
  } else if (result.status === 'exception') {
    $('.signupForm .btn').next('.alert').html(result.content).css('display', 'block')
  } else if (result.status === 'error') {
    $('.signupForm .btn').next('.alert').html(result.content).css('display', 'block')
  }
  $('.signupForm .btn').removeAttr('disabled')
  $('.signupForm .btn').html('立即注册')
}

function checkPwd (pwd) {
  var enoughRegex = new RegExp('(?=.{6,}).*', 'g')
  if (enoughRegex.test(pwd) === false) {
    $('.setPassword').next('.alert').html('*密码太短，密码长度须大于6位').css('display', 'block')
    return false
  } else {
    $('.setPassword').next('.alert').html('').css('display', 'none')
    return true
  }
}
$('body').on('click', '.outerWindow .sure', function () {
  $('.outerWindow .tips').css('display', 'none')
  $('.outerWindow  .loginForm').css('display', 'block')
})

var seting = {
  'login': '.login',
  'signup': '.signup',
  'findPassword': '/user/findpwd',
  'loginUrl': '登陆表单提交地址',
  'signupUrl': '注册表单提交地址',
  'xinlang': '/weibo/weibologin',
  'QQ': '/qqoauth/qqLogin',
  'weixin': '/wechat/wechatlogin'
}
outerWindow(seting)

</script>
