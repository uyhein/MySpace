<%@ Page Title="枣乡特色 品质保证" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"  CodeBehind="Index.aspx.cs" Inherits="DaDa.Index"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #FocusPic
        {
            width: 620px;
            height: 360px;
            position: absolute;
            top: 50px;
            left: 0px;
            border:solid 2px #F6F8CB;
        }
        #news
        {
            width: 240px;
            height: 375px;
            position: absolute;
            top: 50px;
            left: 628px;
            background:url('images/newsBJ1.png') no-repeat 0px 26px;
        }
        .newlist
        {
            width: 200px;
            position: absolute;
            top: 20px;
            left: 0px;
            margin: 10px;
            text-align: left;
        }
        .newlist ul
        {
             margin:0;
             padding:0;
        }
         .newlist li
        {
             margin:0;
             padding:0;
             color:#B3412C;
             list-style-type:disc;
             list-style-position:inside;
             font-weight:normal;
        }
        .newlist li a
        {
        	color:#B3412C;
        }
        .newlist li a:hover
        {
        	color:#B58657;
        }
        .tuijian td
        {
            border: solid 1px #cccccc;
        }
      
    </style>

    <script src="js/jquery.mergingimage.js" type="text/javascript"></script>

    <link type="text/css" rel="stylesheet" href="WebStyle/mergingimage.css" />

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",0);
    });
    </script>

    <div id="main">
        <div id="FocusPic">

            <script type="text/javascript" src="js/Slide.js"></script>

            <script type="text/javascript">
           $(function() {
            $("#div_Slide").Slide({
                auto: true,
                width: 62,
                height: 32,
                onstart: function(curImg, nextImg) {
                    var cData = curImg.attr("data");
                    var nData = nextImg.attr("data");
                    var bigCur = $("#" + cData), bigNext = $("#" + nData);

                    var allBigImg = bigCur.parent().children("img");
                    var curIndex = allBigImg.index(bigCur[0]);
                    var nextIndex = allBigImg.index(bigNext[0]);

                    var firstImg = $(allBigImg[0]);
                    if (firstImg.attr("id") != bigCur.attr("id"))
                        bigCur.insertBefore(firstImg);
                    $("#div_BigImg").scrollLeft(0);
                    bigNext.insertAfter(bigCur);
                },
                onchange: function(percent) {
                    $("#div_BigImg").scrollLeft(620 * percent);
                }
            });
            var bigDiv = $("#div_BigImg");
            var bigDivPos = bigDiv.position();
            bigDiv.scrollLeft(0);

            $("#div_Slide").css({
                "top": (bigDivPos.top + bigDiv.height() - $("#div_Slide").height()) + "px",
                "left": bigDivPos.left + "px"
            });
            
        });
            </script>

            <div id="div_BigImg" style="width: 620px; height: 360px; overflow: hidden">
                <div style="width: 3100px; overflow: hidden; cursor: pointer">
                    <img id="img_Big_1" onclick="location='#'" alt="无棣旅游产品公司欢迎您" src="images/index/big_first.jpg" /><img
                        id="img_Big_2" onclick="location='#'" alt="无棣旅游产品公司欢迎您" src="images/index/big_second.jpg" /><img id="img_Big_3"
                            onclick="location='#'" alt="无棣旅游产品公司欢迎您" src="images/index/big_third.jpg" /><img id="img_Big_4" onclick="#'"
                                alt="无棣旅游产品公司欢迎您" src="images/index/big_fourth.jpg" /><img id="img_Big_5" alt="无棣旅游产品公司欢迎您" src="images/index/big_fifth.jpg" />
                </div>
                <div style="border: #fff 0px solid; position: absolute; width: 280px; height: 65px;
                    margin-left: 375px; overflow: hidden;" id="div_Slide">
                    <img alt="Welcome" src="images/index/thumb_first.jpg" data="img_Big_3"/><img alt="Welcome" src="images/index/thumb_second.jpg"
                        data="img_Big_1"/><img alt="Welcome" src="images/index/thumb_third.jpg" data="img_Big_2"/><img alt="Welcome"
                            src="images/index/thumb_fourth.jpg" data="img_Big_4"/><img alt="Welcome" src="images/index/thumb_fifth.jpg"
                                data="img_Big_5"/>
                </div>
            </div>
        </div>
        <div id="news">
            <div class="tab" style="width: 245px;">
                <dl class="tab-hd">
                    <dt><a><%=tab_firstConf%></a> </dt>
                    <dt><a><%=tab_secondConf%></a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="newlist">
                            <ul>
                            <%foreach (string conf in tab_confTitles)
                                {
                                    Response.Write(string.Format("<li><a href=\"#\">{0}</a></li>",conf));
                                }
                            %>
                              
                                <%--<li><a href="#">情人节新品热推 定情对戒</a></li>
                                <li><a href="#">闪耀非凡彩钻 缤纷上线</a></li>
                                <li><a href="#">浪漫情人节 你买”对“了吗？</a></li>
                                <li><a href="#">中行-小鸟合作抽奖活动</a></li>
                                <li><a href="#">年末大优惠 单买团购巨划算</a></li>
                                <li><a href="#">爱的桂冠－白18K金钻石戒托</a></li>
                                <li><a href="#">拥暖－白18K金钻石戒托</a></li>
                                 <li><a href="#">爱的桂冠－白18K金钻石戒托</a></li>--%>
                            </ul>
                        </div>
                    </dd>
                    <dd>
                       <div class="newlist">
                            <ul>
                                <li><a href="#">小鸟捐赠校服助盲校学生圆梦</a></li>
                                <li><a href="#">钻石文化节开启高端品鉴盛宴</a></li>
                                <li><a href="#">网络钻博会开幕网络买钻主流</a></li>
                                <li><a href="#">中行-小鸟合作抽奖活动</a></li>
                                <li><a href="#">百年校庆校服捐赠—圆梦盲校</a></li>
                                <li><a href="#">爱的桂冠－白18K金钻石戒托</a></li>
                                <li><a href="#">GIA全球副总裁亲临钻石小鸟店</a></li>
                                 <li><a href="#">爱的桂冠－白18K金钻石戒托</a></li>
                            </ul>
                        </div>
                    </dd>
                </dl>
            </div>
            <div style=" width:100%; position:absolute; top:250px; color:White;">
           <div style=" width:118px; height:200px; float:left; background:url('images/vipBJ01.png') no-repeat 0px 0px;">
           <div style=" width:118px; height:28px;background:url('images/shoppingBJ02.png') no-repeat 0px 0px;"> 联系我们</div>
            </div>
            <div style=" width:118px; height:200px; float:right; background:url('images/shoppingBJ01.png') no-repeat 0px 0px;">
            <div style=" width:118px; height:28px;background:url('images/vipBJ02.png') no-repeat 0px 0px;"> 公司微博</div>
            </div>
            </div>
        </div>
        <%--<div id="new_hot" style="top: 395px;">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a>新品推荐</a> </dt>
                    <dt><a>超级热卖</a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content">
                            <div id="im_wrapper" class="im_wrapper">
                                <div style="background-position: 0px 0px;">
                                    <img src="pintu/thumbs/1.jpg" alt="" /></div>
                                <div style="background-position: -125px 0px;">
                                    <img src="pintu/thumbs/2.jpg" alt="" /></div>
                                <div style="background-position: -250px 0px;">
                                    <img src="pintu/thumbs/3.jpg" alt="" /></div>
                                <div style="background-position: -375px 0px;">
                                    <img src="pintu/thumbs/4.jpg" alt="" /></div>
                                <div style="background-position: -500px 0px;">
                                    <img src="pintu/thumbs/5.jpg" alt="" /></div>
                                <div style="background-position: -625px 0px;">
                                    <img src="pintu/thumbs/6.jpg" alt="" /></div>
                                <div style="background-position: 0px -90px;">
                                    <img src="pintu/thumbs/7.jpg" alt="" /></div>
                                <div style="background-position: -125px -90px;">
                                    <img src="pintu/thumbs/8.jpg" alt="" /></div>
                                <div style="background-position: -250px -90px;">
                                    <img src="pintu/thumbs/9.jpg" alt="" /></div>
                                <div style="background-position: -375px -90px;">
                                    <img src="pintu/thumbs/10.jpg" alt="" /></div>
                                <div style="background-position: -500px -90px;">
                                    <img src="pintu/thumbs/11.jpg" alt="" /></div>
                                <div style="background-position: -625px -90px;">
                                    <img src="pintu/thumbs/12.jpg" alt="" /></div>
                                <div style="background-position: 0px -180px;">
                                    <img src="pintu/thumbs/13.jpg" alt="" /></div> 
                                <div style="background-position: -125px -180px;">
                                    <img src="pintu/thumbs/14.jpg" alt="" /></div>
                                <div style="background-position: -250px -180px;">
                                    <img src="pintu/thumbs/15.jpg" alt="" /></div>
                                <div style="background-position: -375px -180px;">
                                    <img src="pintu/thumbs/16.jpg" alt="" /></div>
                                <div style="background-position: -500px -180px;">
                                    <img src="pintu/thumbs/17.jpg" alt="" /></div>
                                <div style="background-position: -625px -180px;">
                                    <img src="pintu/thumbs/18.jpg" alt="" /></div>
                            </div>
                            <div id="im_loading" class="im_loading">
                            </div>
                            <div id="im_next" class="im_next">
                            </div>
                            <div id="im_prev" class="im_prev">
                            </div>
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                            
                            </div>
                    </dd>
                </dl>
            </div>
           
        </div>--%>
    </div>
</asp:Content>
