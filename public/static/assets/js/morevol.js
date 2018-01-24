  $(document).ready(function(){
            $(window).scroll(function(){
                if ($(document).scrollTop() >= $(document).height() - $(window).height()) {
                    var page_num = $("#pagenum").val(); 
                    if ("0" == page_num) { 
                        return;
                    }
               
                    $.ajax({
                        type:"GET",
                        url: '/api/currencies/volrank/' + page_num + '/',
                        beforeSend:function(){
                            $('.loading2').css("display", "block"); //显示加载时候的提示
                        },
                        success: function (ret) {
                            if (ret.length > 0) {
                                var pageIndex = parseInt(page_num) + 1;
                                $("#pagenum").val(pageIndex); 
                                $(".boxContain").append(ret);
                            } else {
                                $("#pagenum").val("0");
                            } 
                            $('.loading2').css("display", "none"); //显示加载时候的提示
                        }  ,
                        error: function (err) { 
                        }
                    })
                }
            })
        })
 