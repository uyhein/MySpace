<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DaDa.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        body, ul, ol, li, p, h1, h2, h3, h4, h5, h6, table, td, th, form, fieldset, img, dl, dt, dd
        {
            margin: 0px;
            padding: 0px;
            font-family: Arial, Helvetica, sans-serif;
        }
        a
        {
            color: #35679a;
            text-decoration: none;
        }
        a:hover
        {
            color: #c00;
            text-decoration: underline;
        }
        img
        {
            border: none;
        }
        li
        {
            list-style: none;
        }
        body
        {
            text-align: left;
            background: #505050;
            font-size: 12px;
        }
        .cont
        {
            background: #080808;
            padding: 8px;
            width: 840px;
            margin: 0 auto;
        }
        .main
        {
            background: #eee;
            padding: 6px;
        }
        h2
        {
            font-size: 16px;
            font-family: "黑体";
            color: #35679a; ;padding:4px10px;margin:10px016px;font-weight:100;border-bottom:2pxsolid#ccc;}
        h3
        {
            padding-left: 50px;
            font-size: 16px;
            color: #555;
        }
        .tab
        {
            border: 4px solid #ccc;
            margin: 10px 50px;
        }
        .tabtag
        {
            line-height: 24px;
            height: 24px;
            border-bottom: 2px solid #ccc;
        }
        .tabtag li
        {
            float: left;
            width: 24%;
            text-align: center;
            background: #eee;
        }
        .tabtag li.cur
        {
            color: #900;
            background: #fff;
        }
        .tabcon
        {
            height: 100px;
            overflow: hidden;
        }
        .tabcon div
        {
            height: 80px;
            padding: 10px;
            color: #900;
            font-size: 14px;
        }
        .tabcon li
        {
            line-height: 22px;
        }
        pre
        {
            color: #444;
        }
        pre strong
        {
            font-weight: 900;
        }
    </style>

    <script src="js/jquery-1.4.4.min.js" type="text/javascript"></script>

    <script src="js/jquery.tabs.js" type="text/javascript"></script>

    <script type="text/javascript">
    $(document).ready(function(){
    $("#tab").tab({ //选择要使用tab插件的元素 最好是ID 比如"#testtab" 
    tabId: "#tabtag", //切换控制器选择符 最好是ID 比如 "#tabcon"
    tabTag: "li", //切换控制器标签 比如 li 
    conId: "#tabcon", //切换容器ID 
    conTag: "div", //切换容器tag 
    curClass:"cur", //标记当前的类名 默认为 cur
    act: "click", //触发方式 默认为 点击 
    dft: 0, //默认显示第几项 默认为第一项
    effact: "slow", //效果 默认为无切换效果 
    auto: false, //自动切换 默认为不自动切换 
    autotime: 3000, //如果自动切换 自动切换的时间间隔默认 3 秒 
    aniSpeed: 500 //如果运用动画切换效果 动画执行的时间间隔 默认500ms 
    }) 
    });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <div class="tab" id="tab">
            <div id="tabtag" class="tabtag" style="position: relative;">
                <ul>
                    <li class="cur">项目一</li>
                    <li>项目二</li>
                    <li>项目三</li>
                    <li>项目四</li>
                </ul>
            </div>
            <div id="tabcon" class="tabcon">
                <div>
                    <ul>
                        <li><a href="#nogo">日之泉杯：寿战两球张晓彬世界波 金德4:2逆转胜绿城</a></li>
                        <li><a href="#nogo">投入超过国字号总和：09足协青少年足球预算500万</a></li>
                        <li><a href="#nogo">09中超期待十大焦点战：鲁沪巅峰PK江浙德比劲爆</a></li>
                        <li><a href="#nogo">泰达上下不惧魔鬼赛程 队员：早晚要打不如一锅端</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#nogo">日之泉杯：寿战两球张晓彬世界波 金德4:2逆转胜绿城</a><span>03/06</span></li>
                        <li><a href="#nogo">投入超过国字号总和：09足协青少年足球预算500万</a><span>03/06</span></li>
                        <li><a href="#nogo">09中超期待十大焦点战：鲁沪巅峰PK江浙德比劲爆</a><span>03/06</span></li>
                        <li><a href="#nogo">泰达上下不惧魔鬼赛程 队员：早晚要打不如一锅端</a><span>03/06</span>></li></ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#nogo">日本影星集合可爱清纯于一身</a></li>
                        <li><a href="#nogo">中超联赛世界排名不敌新加坡</a></li>
                        <li><a href="#nogo">中超联赛世界排名不敌新加坡</a></li>
                        <li><a href="#nogo">中超联赛世界排名不敌新加坡</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#nogo">日之泉杯：寿战两球张晓彬世界波 金德4:2逆转胜绿城</a><span>03/06</span></li>
                        <li><a href="#nogo">投入超过国字号总和：09足协青少年足球预算500万</a><span>03/06</span></li>
                        <li><a href="#nogo">09中超期待十大焦点战：鲁沪巅峰PK江浙德比劲爆</a><span>03/06</span></li>
                        <li><a href="#nogo">泰达上下不惧魔鬼赛程 队员：早晚要打不如一锅端</a><span>03/06</span>></li></ul>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
