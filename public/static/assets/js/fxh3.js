$(document).ready(function () {
	  if ($('#indexheadad').length > 0) {
        var headAd01 = $('<div class="col-2" id="headAd01"><a href="https://www.huobipro.com/zh-cn/notice_detail/?id=890"  target="_blank"><img src="/assets/images/vip/huobi_ht.jpg"></a></div>');
        
        var headAd03 = $('<div class="col-1" id="headAd03"><a href="/app/"  target="_blank"><img src="/assets/images/vip/appad.png"></a></div>');
        var headAd04 = $('<div class="col-2" id="headAd04"><a href="https://www.okex.com/?channelId=11625"  target="_blank"><img src="/assets/images/vip/okex_the.jpg"></a></div>');
        $('#indexheadad').append(headAd01).append(headAd03).append(headAd04);
    }
	
   
    var div2 = $('<div style="height: 100px;overflow: hidden"><a   id="spread3"  href="https://jq.qq.com/?_wv=1027&k=5FxHR79" title="非小号QQ群：368805087" target="_blank"><img src="/assets/images/index03.png"></a></div>');
$('.outlink3').append(div2);


if($('.bannerIner').length>0)
{ 
var a = $('<a href="//robot.feixiaohao.com" id="spread2" target="_blank" page="1"><img src="/assets/images/home_fxhrobot.png" ></a>');
 a.appendTo('.bannerIner');
}
/*
if($('.bannerPoin').length>0)
{ 
var i = $('<i class="scrollLeft"></i><i class="scrollRight"></i>');
i.appendTo('.bannerPoin');
}
var all = $('.bannerIner a').length;
var count = 0;
var banner = '';

function bannerscroll(count) {
    $('.bannerIner a').eq(0).animate({
        'margin-left': '-325px'
    }, 500, function () {
        $(this).css('margin-left', '0').appendTo('.bannerIner');
        $('.bannerPoin i').removeClass('active');
        if (count) {
            $('.bannerPoin i').eq(count).addClass('active');
        }

    })
}
function banner1() {
    banner = setInterval(function () {
        count++;
        if (count == all) {
            count = 0;
        }
        bannerscroll(count)
    }, 5000);
}
banner1();

$('.scrollRight').click(function () {
    clearInterval(banner);
    var c = $('.bannerIner a').eq(all - 1).css('margin-left', '-325px')
    $('.bannerIner').prepend(c);
    $('.bannerIner a').eq(0).animate({
        'margin-left': '0'
    }, 500)
    banner1();
});

$('.scrollLeft').click(function () {
    count++
    clearInterval(banner);
    bannerscroll(count)
    banner1();
});
*/
	
$('body').on('click', '#spread1_0,#spread1_1,#spread2,#spread2_2,#spread3', function () {
		var  thiscode=$(this).attr("id");
    $.ajax({

        url:'/api/sitestat/?code='+thiscode,
        type: "GET",
        success:function(data){
             return;
        },
        error:function(){
            return;
        }
    })
});

});




