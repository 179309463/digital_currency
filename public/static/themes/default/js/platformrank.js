﻿function series_is_visible(chartName, index, defaultState) {
    var preferences = Cookies.getJSON("highcharts_" + chartName);
    if (preferences === undefined) {
        return defaultState;
    }
    return preferences[index];
}
function tooltip_format_market_cap() {
    val = format_market_cap(this.y);
    return '<span style="color:' + this.color + '">\u25CF</span> ' + this.series.name + ': <b>' + val + ' CNY</b><br/>'
}
function tooltip_format_crypto() {
    val = this.y;
    return '<span style="color:' + this.color + '">\u25CF</span> ' + this.series.name + ': <b>' + val + '</b><br/>'
}

function tooltip_format_fiat() {
    val = this.y;
    return '<span style="color:' + this.color + '">\u25CF</span> ' + this.series.name + ': <b>' + val + '</b><br/>'
}

function label_format_market_cap() {
    val = format_market_cap(this.value)
    return '¥' + val;
}

function label_format_fiat() {
    val = this.y;
    return val;
}

function is_mobile() {

    var mobile = $("#metadata").data("mobile");
    return mobile == "True"
}
function HighChartsGraph(graphId, loadingId, noDataId) {
    this.graphId = graphId;
    this.loadingId = loadingId;
    this.noDataId = noDataId;
}

HighChartsGraph.prototype.init = function (start, end) {
    var that = this;
    that.fetchAndLoad(that.initCharts, start, end)
}
HighChartsGraph.prototype.chartsLoaded = function () {
    var chart = $("#" + this.graphId).highcharts();
    return chart !== undefined;
}
HighChartsGraph.prototype.hideLoading = function () {
    $("#" + this.loadingId).hide();
}
HighChartsGraph.prototype.showNoData = function () {
    $("#" + this.noDataId).removeClass('hidden');
}
HighChartsGraph.prototype.afterSetExtremes = function (e) {
    if (e.dataMin != e.min || e.dataMax != e.max) {
        that = this;
        var min = Math.round(e.min);
        var max = Math.round(e.max);
        that.updateCharts(min, max)
    }
}
HighChartsGraph.prototype.updateCharts = function (min, max) {
    var that = this;
    var chart = $('#' + that.graphId).highcharts();
    chart.showLoading('');
    that.fetchAndLoad(that.finishUpdateCharts, min, max);
}
HighChartsGraph.prototype.finishUpdateCharts = function (seriesData) {
}
HighChartsGraph.prototype.fetchAndLoad = function (callback, start, end) {
}
HighChartsGraph.prototype.initCharts = function (seriesData) {
}
function GbiGraph(graphId, loadingId, noDataId) {
    HighChartsGraph.call(this, graphId, loadingId, noDataId);

}
GbiGraph.prototype = new HighChartsGraph;
GbiGraph.constructor = GbiGraph;
GbiGraph.prototype.finishUpdateCharts = function (seriesData) {
    var that = this;
    var chart = $('#' + that.graphId).highcharts();
    chart.series[0].setData(seriesData["platformRank"]);
    chart.series[1].setData(seriesData["vol_cny"]);
    chart.hideLoading();
}
GbiGraph.prototype.fetchAndLoad = function (callback, start, end) {
    var sitecode = $("#HSiteCode").val();
    var that = this;
    var apiDomain = "/api";
    timeParams = ""
    if (start !== undefined && end !== undefined) {
        timeParams = start + "/" + end + "/";
    }
    $.ajax({
        url: apiDomain + "/platformrank/" + sitecode + "/" + timeParams,
        type: "GET",
        dataType: "json",
        error: function () {
            that.hideLoading();
            that.showNoData();
        },
        success: function (data) {
            if (undefined != data && null != data) {
                if (data.platformRank.length >= 1) {
                    $("#platformrankBox").css("display", "block");
                }
            }
            callback.call(that, data);

        }
    });
}
GbiGraph.prototype.initCharts = function (seriesData) {
    var that = this;
    Highcharts.setOptions({
        global: { useUTC: false },
        lang: {
            downloadJPEG: "下载jpg",
            downloadPDF: '下载pdf',
            downloadPNG: '下载png',
            downloadSVG: '下载svg',
            loading: '',
            months: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
            printChart: '打印图表',
            shortMonths: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
            rangeSelectorFrom: "从",
            rangeSelectorTo: "到",
            rangeSelectorZoom: "缩放",
            resetZoom: "恢复初始缩放等级",
            resetZoomTitle: " 1:1缩放等级",
            shortWeekdays: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
            weekdays: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
            numericSymbols: ["千", "百万", '十亿'],
            thousandsSep: ","
        }
    });
    var titleName = $("#HSiteCode").val() + "历史排名趋势图";
    $('#' + that.graphId).highcharts('StockChart', {
        chart: { type: 'line', zoomType: is_mobile() ? 'null' : 'x', ignoreHiddenSeries: true },
        tooltip: { shared: true, hideDelay: 50, xDateFormat: '%A, %b %d %Y' },
        legend: {
            enabled: false,
            align: 'center',
            backgroundColor: '#FFFFFF',
            borderColor: 'black',
            borderWidth: 0,
            layout: 'horizontal',
            verticalAlign: 'bottom',
            y: 0,
            shadow: false,
            floating: false
        },
        navigator: { adaptToUpdatedData: false },
        scrollbar: { liveRedraw: false },
        title: { text: "", align: "left", style: { fontSize: "24px" } },
        subtitle: { text: '' },
        rangeSelector: {
            allButtonsEnabled: true,
            buttons: [{ type: 'day', count: 1, text: 'D' }, { type: 'week', count: 1, text: 'W' }, {
                type: 'month',
                count: 1,
                text: 'M'
            }, { type: 'year', count: 1, text: 'Y' }, { type: 'all', text: 'ALL' }],
            selected: 5,
            inputEnabled: true,
            enabled: true
        },
        xAxis: [{
            dateTimeLabelFormats: {
                day: '%Y<br/>%m-%d',
                week: '%Y<br/>%m-%d',
                month: '%Y-%m',
                year: '%Y'
            },
            events: {
                afterSetExtremes: function (e) {
                    that.afterSetExtremes(e)
                }
            }, minRange: 24 * 3600 * 1000
        }],
        yAxis: [{
            labels: { formatter: label_format_fiat, style: { color: '#666666', }, align: "right", x: -30 },
            title: { text: '排名', style: { color: '#666666', 'font-weight': 'bold' } },
            showEmpty: false,
            height: '80%',
            opposite: true,
            floor: 0,
            min: 1,
            reversed: true
        }
        , {
            labels: { align: 'right', style: { color: '#777', } },
            title: { text: '28h 成交量', style: { color: '#777', 'font-weight': 'bold' } },
            showEmpty: false,
            top: '80%',
            height: '20%',
            offset: 2,
            lineWidth: 1,
            opposite: false
        }],
        series: [{
            name: $("#HSiteCode").val() + "排名",
            yAxis: 0,
            color: '#85BCEB',
            tooltip: { pointFormatter: tooltip_format_fiat },
            data: seriesData["platformRank"],
            dataGrouping: { enabled: false }
        }
        , {
            type: 'column',
            name: '28h 成交量',
            color: '#777',
            yAxis: 1,
            tooltip: { pointFormatter: tooltip_format_market_cap },
            data: seriesData["vol_cny"],
            dataGrouping: { approximation: "average", enabled: false }
        }],
        plotOptions: {
            series: {
                events: {
                    legendItemClick: function (event) {
                        var index = event.target.index
                        save_preferences(that.chartName, index, this.chart);
                    }
                }
            }
        },
    });
    that.hideLoading();
}

$(document).ready(function () {
    $(function () {
        var hash = window.location.hash;
        var gbiGraph = new GbiGraph("highcharts-graph_platformrank", "highcharts-loading_platformrank", "highcharts-nodata_platformrank");

        $('.tabTit .tit a').click(function () {

            var box = $(this).closest('.box').find('.tabBody');
            var index = $(this).closest('.tit').index();
            if (box.eq(index).css('display') !== 'block') {
                $(this).closest('.tabTit').find('.tit').removeClass('active');
                $(this).closest('.tit').addClass('active');
                box.css('display', 'none');
                box.eq(index).fadeIn('100');
            }
            if (this.hash == "#rank" && !gbiGraph.chartsLoaded()) {
                gbiGraph.init();

            }
        });
        if (hash.length > 0) {
            $('.tabTit .tit a[href="' + hash + '"]').trigger('click');
        }

    });

});