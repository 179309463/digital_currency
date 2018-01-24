var apiHots = "/api/";
//邮箱找回提交
$('.findPwd-mail .btn').click(function () {
    $('p.alert').html('').css('display', 'none');
    if ($('input.mail').val().trim() == '') {
        $('input.mail').next('p.alert').html('*邮箱不能为空').css('display', 'block'); return false
    } else if ($('input.imgcode').val().trim() == '') {
        $('.hasPic').find('p.alert').html('*验证码不能为空').css('display', 'block'); return false
    }
    else if (!checkEmail($('input.mail').val().trim())) {
        $('input.mail').next('p.alert').html('*请输入正确的邮箱').css('display', 'block'); return false
    }
    else {
        var parms = new Object();
        $('.findPwd-mail .btn').attr("disabled", "disabled");
        $('.findPwd-mail .btn').html("提交中...");
        var parms = new Object();
        parms["mail"] = $('input.mail').val().trim();
        parms["imgcode"] = $('input.imgcode').val().trim();
        $.ajax({
            url: apiHots + "user/findpwd",
            data: parms,
            type: "post",
            async: true,
            xhrFields: {
                withCredentials: true
            },
            success: function (data) {
                findpwdResponse(data);
            }
        });
        
    }
})

function checkEmail(e) {
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    if (!myreg.test(e)) {
        return false;
    }
    else return true;
}

//处理找回的反馈信息
function findpwdResponse(data) {

    var result = eval("(" + data + ")");
    if (result.status == "success") {
        $('.findPwd-mail .btn').next('.alert').html("发送成功，你查看邮件!").css("display", 'block');
    }
    else if (result.status == "exception") {
        $('.findPwd-mail .btn').next('.alert').html(result.content).css("display", 'block');
    }
    else if (result.status == "error") {
        $('.findPwd-mail .btn').next('.alert').html(result.content).css("display", 'block');
    }
    $('.findPwd-mail .btn').removeAttr("disabled");
    $('.findPwd-mail .btn').html("发送邮件");
}


//*******************************************全网
//添加自选(全网)
function addchose() {
     
    $('#FocusChose').attr("disabled", "disabled");
    $('#FocusChose').html("提交中...");
    var parms = new Object();
    var coincode = $("#coincode").val();
    parms["coincode"] = coincode;
    parms["type"] = "1";
    $.ajax({
        url: apiHots + "user/coinfocus",
        data: parms,
        type: "post",
        async: true,
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            addfocusResponse(data);
        }
    });
    
}
function addfocusResponse(data) {

    var result = eval("(" + data + ")");
    if (result.status == "success") {
        $('#FocusChose').attr("onclick", "cancelchose()");
        $('#FocusChose').attr("class", "hasaddto disactive");

        $('#FocusChose').removeAttr("disabled");
        $('#FocusChose').html("移除自选");
    }
    else {
        alert(result.content);
        $('#FocusChose').removeAttr("disabled");
        $('#FocusChose').attr("class", "addto disactive");
        $('#FocusChose').html("添加自选");
    }
    
}

//取消自选（全网）
function cancelchose() {

    $('#FocusChose').attr("disabled", "disabled");
    $('#FocusChose').html("提交中...");
    var parms = new Object();
    var coincode = $("#coincode").val();
    parms["coincode"] = coincode;
    parms["type"] = "2";
    $.ajax({
        url: apiHots + "user/coinfocus",
        data: parms,
        type: "post",
        async: true,
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            cancelfocusResponse(data);
        }
    }); 
}
function cancelfocusResponse(data) {

    var result = eval("(" + data + ")");
    if (result.status == "success") {
        $('#FocusChose').attr("onclick", "addchose()");
        $('#FocusChose').attr("class", "addto disactive");
        $('#FocusChose').removeAttr("disabled");
        $('#FocusChose').html("添加自选");
    }
    else {
        alert(result.content);
        $('#FocusChose').removeAttr("disabled");
        $('#FocusChose').attr("class", "hasaddto disactive");
        $('#FocusChose').html("移除自选");
    } 
}

//*******************************************

//*******************************************交易对
//添加自选(交易对)
function addsitechose(keys) {
    
    var id = keys.attr("id");

    keys.attr("disabled", "disabled");
    keys.html("提交中...");
    var parms = new Object();
    var coincode = id.split("#")[1];
    var sitecode = id.split("#")[2];
    var symbolpair = id.split("#")[3];
    parms["coincode"] = coincode;
    parms["sitecode"] = sitecode;
    parms["symbolpair"] = symbolpair;
    parms["type"] = "1";
   
    $.ajax({
        url: apiHots + "user/coinsitefocus",
        data: parms,
        type: "post",
        async: true,
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            addsitefocusResponse(data);
        }
    });
    function addsitefocusResponse(data) {

        var result = eval("(" + data + ")");
        if (result.status == "success") {
            keys.attr("onclick", "cancelsitechose($(this))");
            keys.attr("class", "hasaddto disactive");

            keys.removeAttr("disabled");
            keys.html("移除自选");
        }
        else {
            alert(result.content);
            keys.removeAttr("disabled");
            keys.attr("class", "addto disactive");
            keys.html("添加自选");
        }

    }
}


//取消自选（交易对）
function cancelsitechose(keys) {
    
    var id = keys.attr("id");

    keys.attr("disabled", "disabled");
    keys.html("提交中...");
    var parms = new Object();
    var coincode = id.split("#")[1];
    var sitecode = id.split("#")[2];
    var symbolpair = id.split("#")[3];
    parms["coincode"] = coincode;
    parms["sitecode"] = sitecode;
    parms["symbolpair"] = symbolpair;
    parms["type"] = "2";
    $.ajax({
        url: apiHots + "user/coinsitefocus",
        data: parms,
        type: "post",
        async: true,
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            cancelsitefocusResponse(data);
        }
    });
   

    function cancelsitefocusResponse(data) {


        var result = eval("(" + data + ")");
        if (result.status == "success") {
            keys.attr("onclick", "addsitechose($(this))");
            keys.attr("class", "addto disactive");
            keys.removeAttr("disabled");
            keys.html("添加自选");
        }
        else {
            alert(result.content);
            keys.removeAttr("disabled");
            keys.attr("class", "hasaddto disactive");
            keys.html("移除自选");
        }
    }
}

//*******************************************搜索结果
//搜索结果--添加自选(全网)
function addsearchchose(keys) {

    var id = keys.attr("id");

    keys.attr("disabled", "disabled");
    keys.html("提交中...");
    var parms = new Object();
    var coincode = id.split("#")[1];
    var symbolpair = id.split("#")[2];
    parms["coincode"] = coincode;
    parms["symbolpair"] = symbolpair;
    parms["type"] = "1";

    $.ajax({
        url: apiHots + "user/CoinSearchFocus",
        data: parms,
        type: "post",
        async: true,
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            addsearchfocusResponse(data);
        }
    });
    function addsearchfocusResponse(data) {

        var result = eval("(" + data + ")");
        if (result.status == "success") {
            keys.attr("onclick", "cancelsearchchose($(this))");
            keys.attr("class", "hasaddto disactive");

            keys.removeAttr("disabled");
            keys.html("移除自选");
        }
        else {
            alert(result.content);
            keys.removeAttr("disabled");
            keys.attr("class", "addto disactive");
            keys.html("添加自选");
        }

    }
}

 
function removesitechose(keys) {
    var id = keys.attr("id");

  
    var parms = new Object();
    var coincode = id.split("#")[1];
    var sitecode = id.split("#")[2];
    var symbolpair = id.split("#")[3];
    parms["coincode"] = coincode;
    parms["sitecode"] = sitecode;
    parms["symbolpair"] = symbolpair;
    parms["type"] = "2";
    delconfirm(symbolpair, function () {
        keys.attr("disabled", "disabled");
        keys.html("提交中...");
        $.ajax({
            url: apiHots + "user/coinsitefocus",
            data: parms,
            type: "post",
            async: true,
            xhrFields: {
                withCredentials: true
            },
            success: function (data) {
                cancelsitefocusResponse(data);
                $('.layui-layer-close').trigger('click');
            }
        });

    }); 
   
    function cancelsitefocusResponse(data) {


        var result = eval("(" + data + ")");
        if (result.status == "success") {
            keys.parents("tr").remove();
            var tbRows= $("#table tr");
            for(var i=1;i<tbRows.length;i++)
            {
                tbRows.eq(i).find("td:first-child").html(i);
            }
        }
        else {
            keys.removeAttr("disabled"); 
            keys.html("移除自选");
        }
    }
}

function delconfirm(text, callback) {
    var style = '<style class="delstyle">.alert{padding:15px;margin-top: 15px;font-size: 16px}.btngroup{margin-top: 15px}.btngroup button{height: 30px;border}.alert .group a{margin: 0 5px}</style>';
    if ($('.delstyle').length == 0) {
        $('head').append(style);
    }
    var div = '<div class="alert loginTip" style="min-height:0!important">确认移除' + text + '?<div class="group" style="margin-top: 15px"><a class="delete">确定</a><a class="cancel">取消</a></div></div>';
    layer.open({
        title: '移除自选',
        type: 1,
        area: ['300px', '190px'],
        shadeClose: true,
        content: div
    });
    $('body').on('click', '.alert .cancel', function () {
        $('.layui-layer-close').trigger('click')
    })
    $('body').on('click', '.alert .delete', function () {
        return callback()
    })
}
function refreshUserticker() {
    setInterval(function () {
        var page = $("#usertickerpage").val();
        $.ajax({
            url: apiHots + "/user/usertickerlist.json?page=" + page,
            async: true,
            xhrFields: {
                withCredentials: true
            },
            dataType: "json",
            success: function (data) {

                if (data.TickerList.length > 0) {

                    for (var i = 0; i < data.TickerList.length; i++) {
                        var rowId = '#tr_' + data.TickerList[i].CoinCode + "_" + data.TickerList[i].SiteCode + "_" + data.TickerList[i].CoinSymbolPair.replace("/", "_");
                        var tickerRow = $(rowId);
                        if (0 == tickerRow.length) {
                            continue;
                        }



                        updateUserTickerData(tickerRow, 3, "¥" + data.TickerList[i].Last_Cny);
                        if (0 == data.TickerList[i].SiteCode.length)
                        {
                            updateUserTickerData(tickerRow, 4, "$" + data.TickerList[i].Last);
                        } else {
                            updateUserTickerData(tickerRow, 4, data.TickerList[i].Last);
                        }
                       
                        updateUserTickerData(tickerRow, 5, data.TickerList[i].Vol);
                        changeTd = tickerRow.find('td').eq(6)
                        var changePercent = data.TickerList[i].Change + "%";
                        changeTd.removeClass('text-green').removeClass('text-red');
                        if (data.TickerList[i].Change > 0) {
                            changeTd.text(changePercent).css('background', '#eee').animate({ backgroundColor: 'transparent' }, 1500).addClass('text-green');
                        } else if (data.TickerList[i].Change < 0) {
                            changeTd.text(changePercent).css('background', '#eee').animate({ backgroundColor: 'transparent' }, 1500).addClass('text-red');
                        } else {
                            changeTd.text(changePercent).css('background', '#eee').animate({ backgroundColor: 'transparent' }, 1500);
                        }

                    }

                }

            }
        });
    }, 30000);

}

function updateUserTickerData(tickerRow, cellIndex, cellValue) {
    var lastValue = tickerRow.find('td').eq(cellIndex).find("span").html();
    var curValue = cellValue;
    if (lastValue == curValue) {
        return;
    }

    var change = 0;
    if (lastValue.replace("¥", "") > 0 && "?" != lastValue) {
        change = parseFloat(curValue.replace("¥", "")) - parseFloat(lastValue.replace("¥", ""));
    }else if (lastValue.replace("$", "") > 0 && "?" != lastValue) {
        change = parseFloat(curValue.replace("$", "")) - parseFloat(lastValue.replace("$", ""));
    }
    if (change > 0) {
        tickerRow.find('td').eq(cellIndex).find('span').text(cellValue).css('background', '#eee').animate({ backgroundColor: 'transparent' }, 1500).addClass('text-green');
    } else if (change < 0) {
        tickerRow.find('td').eq(cellIndex).find('span').text(cellValue).css('background', '#eee').animate({ backgroundColor: 'transparent' }, 1500).addClass('text-red');
    } else {
        tickerRow.find('td').eq(cellIndex).find('span').text(cellValue).css('background', '#eee').animate({ backgroundColor: 'transparent' }, 1500);
    }
    (function ($) {
        var b = setTimeout(function () {
            tickerRow.find('td').eq(cellIndex).find('span').removeClass('text-green').removeClass('text-red');
        }, 10000);

    })(jQuery);
}