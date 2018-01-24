/**
 * Created by zfd on 2017/10/18.
 */
var div = $('<div  style="margin-left: -40px"><a id="coindetal01" target="_blank" href="https://www.kucoin.com/#/signup?r=E2Q9qY"><img src="/themes/default/images/pccoinindex02_kucoin.jpg"  alt="KuCoin交易所-每天分90%手续费" title="KuCoin交易所-每天分90%手续费" ></a></div>');
$('.outlink01').append("");
$("#indexad02").append(" <a id='spread1' href='//robot.feixiaohao.com' target='_blank'><img src='/themes/default/images/home_fxh.png' alt='非小号智能机器人'></a>");
if ($('.headAd').length > 0) {
     var headAd05 = $('<div class="col-1" id="headAd05"><a href="https://jq.qq.com/?_wv=1027&k=5FxHR79"  target="_blank"><img src="/themes/default/images/vip/qqrobot.png"></a></div>');
   var headAd02 = $('<div class="col-2" id="headAd02"><a  href="/app/"  target="_blank"><img src="//static.feixiaohao.com/themes/default/images/fxhapp2.png"></a></div>');
  var headAd03 = $('<div class="col-2" id="headAd03"><a href="//robot.feixiaohao.com"  target="_blank"><img src="/themes/default/images/indxtop_fxh1.png"></a></div>');
    
     $('.headAd').append(headAd02).append(headAd05).append(headAd03); 
}
$('body').on('click', '#spread1,#coindetal01', function () {
    var thiscode = $(this).attr("id");
    $.ajax({

        url: '/api/sitestat/?code=' + thiscode,
        type: "GET",
        success: function (data) {
            return;
        },
        error: function () {
            return;
        }
    })
});

 function loadMaxChange() {
    var mc = $('<a id="spread4"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(mc);
}

function loadExchange()
{
    var ec = $('<a id="spread5"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}

//概念列表
function loadConcept() {
    var ec = $('<a id="spread6"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}
//概念相关币种
function loadConceptCoin() {
    var ec = $('<a id="spread7"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}
//事件详情列表
function loadEventDetailsCoin() {
    var ec = $('<a id="spread8"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}
//币介绍页面列表
function loadEventDetailsCoin() {
    var ec = $('<a id="spread8"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}
//币行情列表
function loadCoinMarket() {
    var ec = $('<a id="spread8"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}
//搜索列表
function loadSearchAD() {
    var ec = $('<a id="spread8"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/themes/default/images/index03.png"></a>');
    $('.plantListsSpread').append(ec);
}