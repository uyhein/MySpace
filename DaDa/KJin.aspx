<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="KJin.aspx.cs" Inherits="DaDa.KJin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body
        {
            background-image: url(images/webBJ2.jpg);
        }
    </style>
    <style type="text/css">
        body
        {
            background-image: url(images/bodybg.jpg);
        }
        #gallery
        {
            width: 860px;
            margin: 0 auto;
        }
        #gotop
        {
            cursor: pointer;
            display: block;
        }
        #gobottom
        {
            cursor: pointer;
            display: block;
        }
        #thumbright
        {
            z-index: 2;
            position: absolute;
            left: 615px;
            top: 5px;
        }
        #thumbnails
        {
            width: 240px;
            height: 307px;
            overflow: hidden;
            z-index: 2;
        }
        #thumbnails img
        {
            display: block;
            width: 63px;
            height: 63px;
            float: left;
            padding: 1px;
            border: solid 1px #CCB589;
            cursor: pointer;
        }
        #thumbnails tr td div
        {
            display: none;
        }
        #thumbnails ul li div
        {
            display: none;
        }
        #fullSize
        {
            width: 360px;
            font-family: georgia, serif;
            position: absolute;
            left: 0px;
        }
        #fullSize img
        {
            display: block;
            margin: 20px auto;
            width: 300px;
            height: 300px;
        }
        #fullSize div
        {
            margin: 0 auto;
            text-align: left;
            padding: 100px 0;
            position: absolute;
            left: 390px;
            float: left;
            top: 40px;
        }
        #fullSize div h1
        {
            font-size: 18px;
            padding: 5px 0;
            margin: 0;
            color: #863F49;
        }
        #fullSize div p
        {
            font-size: 12px;
            line-height: 1.6em;
            color: #E2A46B;
            padding: 5px 0;
            margin: 0;
        }
        .bigtop
        {
            margin: 0px auto;
            position: absolute;
            left: 52px;
            top: 20px;
            z-index: 1;
        }
        .bigleft
        {
            margin: 0px auto;
            position: absolute;
            left: 30px;
            top: 20px;
            z-index: 1;
        }
        .bigbottom
        {
            margin: 0px auto;
            position: absolute;
            left: 52px;
            top: 299px;
            z-index: 1;
        }
        .bigright
        {
            margin: 0px auto;
            position: absolute;
            left: 310px;
            top: 20px;
            z-index: 1;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="WebStyle/jquery.lightbox-0.5.css" media="screen" />

    <script src="js/jquery.lightbox-0.5.js" type="text/javascript"></script>

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",0);
    });
    </script>

    <script type="text/javascript">
       /* ================================================================ 
       This copyright notice must be untouched at all times.
       Copyright (c) 2008 Stu Nicholls - stunicholls.com - all rights reserved.
       =================================================================== */
       /* <![CDATA[ */
       $(document).ready(function() {
           /* show first image and information */
           firstStr = $('.thumb');
           showStr = firstStr.html();
           showDiv(showStr);
           $('.thumb img').css("backgroundColor", "#F1ECE2");
           $('.thumb').children(":first").css("background", "#AF0007");


           /* monitor mouse clicks */
           $('.thumb').click(function() {
               $('.thumb img').css("backgroundColor", "#F1ECE2");
               $(this).children(":first").css("background", "#AF0007");
               htmlStr = $(this).html();


               /* swap images and information */
               $('#fullSize div').slideUp(500);
               $('#fullSize img').animate({ "width": "1px" }, 400)
						.animate({ "height": "0px" }, 400, function() { showDiv(htmlStr) });
           });

           /* show image and information */
           function showDiv(htmlStr) {
               $('#fullSize').html(htmlStr);
               //	    $('#fullSize img')	.hide();
               $('#fullSize div').hide();
               imgWidth = ($('#fullSize img').outerWidth());
               imgHeight = ($('#fullSize img').outerHeight());

               $('#fullSize div').css("width", imgWidth + "px");
              
               $('#fullSize img').css("height", "1px")
						.css("width", "1px")
						.animate({ "height": imgHeight }, 400)
						.animate({ "width": imgWidth }, 400, function() { showInfo() });
		       var src=$('#fullSize img').attr("src");
		       var title=$('#fullSize img').attr("title");
			   $("#fullSize img").wrap("<a rel='lightbox' title='"+title+"' href='"+src+"'></a>");
               $('a[rel*=lightbox]').lightBox();
           }

           function showInfo() {
               $('#fullSize div').slideDown(750);
           }

       });
       /* ]]> */
    </script>

    <div id="main">
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a>K金饰品</a> </dt>
                    <%--                    <dt><a>男戒</a> </dt>
                    <dt><a>女戒</a> </dt>--%>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content">
                            <div class="bigtop">
                                <img alt="" src="images/big_top.png" style="width: 258px;" /></div>
                            <div class="bigleft">
                                <img alt="" src="images/big_left.png" /></div>
                            <div class="bigbottom">
                                <img alt="" src="images/big_bottom.png" style="width: 258px;" /></div>
                            <div class="bigright">
                                <img alt="" src="images/big_right.png" /></div>
                            <div id="gallery">
                                <div id="thumbright">
                                    <center>
                                        <img src="images/gotop.png" alt="向上滚动" width="100" height="14" id="gotop" /></center>
                                    <div id="thumbnails">
                                        <table cellpadding="3" cellspacing="3">
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/D0190-1.61g-0.792.jpg" alt="" title="金重：1.61克，钻石重量：0.792ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.61g</h1>
                                                        <h1>
                                                            钻石重量：0.792ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/D02646-1.1g-0.327ct-1.JPg" alt="" title="金重：1.10克，钻石重量：0.327ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.10g</h1>
                                                        <h1>
                                                            钻石重量：0.327ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/D02646-1.1g-D0.3-d0.036-￥2358.jpg" alt="" title="金重：1.10克，钻石重量：0.336ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.10g</h1>
                                                        <h1>
                                                            钻石重量：0.336ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/D02948-1.38g-0.237ct-1-1.JPg" alt="" title="金重：1.38克，钻石重量：0.237ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.38g</h1>
                                                        <h1>
                                                            钻石重量：0.237ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/D02948-1.38g-D0.25-d0.04-￥1667.jpg" alt="" title="金重：1.38克，钻石重量：0.290ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.38g</h1>
                                                        <h1>
                                                            钻石重量：0.290ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/DO2933-1.35g-D0.18-d0.03-￥1276.jpg" alt="" title="金重：1.35克，钻石重量：0.210ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.35g</h1>
                                                        <h1>
                                                            钻石重量：0.210ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0010-1.98g-0.304ct-￥2512.jpg" alt="" title="金重：1.98克，钻石重量：0.304ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.98g</h1>
                                                        <h1>
                                                            钻石重量：0.304ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0019-1g-0.273ct-￥1558.jpg" alt="" title="金重：1.00克，钻石重量：0.237ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.00g</h1>
                                                        <h1>
                                                            钻石重量：0.273ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0034-0.87g-0.233ct-￥1340.jpg" alt="" title="金重：0.87克，钻石重量：0.233ct" />
                                                    <div>
                                                        <h1>
                                                            金重：0.87g</h1>
                                                        <h1>
                                                            钻石重量：0.233ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/D02878-1.37g-0.239ct-￥1507.jpg" alt="" title="金重：1.37克，钻石重量：0.239ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.37g</h1>
                                                        <h1>
                                                            钻石重量：0.239ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0057-1.5g-D.50-d0.048-￥6068.jpg" alt="" title="金重：1.50克，钻石重量：0.548ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.50g</h1>
                                                        <h1>
                                                            钻石重量：0.548ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0074-1.22g-0.247ct-￥1649.jpg" alt="" title="金重：1.22克，钻石重量：0.247ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.22g</h1>
                                                        <h1>
                                                            钻石重量：0.247ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0112-0.87g-0.24ct-￥1522.jpg" alt="" title="金重：0.87克，钻石重量：0.240ct" />
                                                    <div>
                                                        <h1>
                                                            金重：0.87g</h1>
                                                        <h1>
                                                            钻石重量：0.240ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0114-0.79g-0.517ct.jpg" alt="" title="金重：0.79克，钻石重量：0.517ct" />
                                                    <div>
                                                        <h1>
                                                            金重：0.79g</h1>
                                                        <h1>
                                                            钻石重量：0.517ct</h1>
                                                    </div>
                                                </td>
                                                 <td class="thumb">
                                                    <img src="Product/kjin/HB552-1.11g-0.254ct-￥1520.jpg" alt="" title="金重：1.11克，钻石重量：0.254ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.11g</h1>
                                                        <h1>
                                                            钻石重量：0.254ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0114-0.7g-D0.33-d0.05-￥2430.jpg" alt="" title="金重：0.70克，钻石重量：0.80ct" />
                                                    <div>
                                                        <h1>
                                                            金重：0.70g</h1>
                                                        <h1>
                                                            钻石重量：0.380ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0286-1.27g-D0.10-d0.036-￥747.jpg" alt="" title="金重：1.27克，钻石重量：0.136ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.27g</h1>
                                                        <h1>
                                                            钻石重量：0.136ct</h1>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0287-1.23g-D0.15-d0.03-￥998.jpg" alt="" title="金重：1.23克，钻石重量：0.180ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.23g</h1>
                                                        <h1>
                                                            钻石重量：0.180ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0347-1.78g-D0.50-d0.056-￥6162.jpg" alt="" title="金重：1.78克，钻石重量：0.556ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.78g</h1>
                                                        <h1>
                                                            钻石重量：0.556ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0395-1.33g-D0.10-d0.30-d0.168-￥1960.jpg" alt="" title="金重：1.33克，钻石重量：0.468ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.33g</h1>
                                                        <h1>
                                                            钻石重量：0.468ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB0401-1.73g-0.231ct-￥1562.jpg" alt="" title="金重：1.73克，钻石重量：0.231ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.73g</h1>
                                                        <h1>
                                                            钻石重量：0.231ct</h1>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB049B-1.35g-0.513-￥6040.jpg" alt="" title="金重：1.35克，钻石重量：0.513ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.35g</h1>
                                                        <h1>
                                                            钻石重量：0.513ct</h1>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="Product/kjin/HB537-1.26g-0.506ct-￥5874.jpg" alt="" title="金重：1.26克，钻石重量：0.506ct" />
                                                    <div>
                                                        <h1>
                                                            金重：1.26g</h1>
                                                        <h1>
                                                            钻石重量：0.506ct</h1>
                                                    </div>
                                                </td>
                                               
                                            </tr>
                                        </table>
                                    </div>
                                    <center>
                                        <img src="images/gobottom.png" alt="向下滚动" width="100" height="14" id="gobottom" /></center>
                                </div>
                                <div id="fullSize">
                                </div>
                            </div>
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                            内容5</div>
                    </dd>
                    <dd>
                        <div class="content">
                            内容6</div>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

    <script type="text/javascript">

            var MyMar;
            var speed = 10; //速度，越大越慢
            var spec = 1; //每次滚动的间距, 越大滚动越快
            document.getElementById('gotop').onmouseover = function() { MyMar = setInterval(gotop, speed); }
            document.getElementById('gotop').onmouseout = function() { clearInterval(MyMar); }
            document.getElementById('gobottom').onmouseover = function() { MyMar = setInterval(gobottom, speed); }
            document.getElementById('gobottom').onmouseout = function() { clearInterval(MyMar); }
            function gotop() { document.getElementById('thumbnails').scrollTop -= spec; }
            function gobottom() { document.getElementById('thumbnails').scrollTop += spec; }
    
    </script>

</asp:Content>
