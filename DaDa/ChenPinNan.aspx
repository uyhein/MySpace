<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ChenPinNan.aspx.cs" Inherits="DaDa.ChenPinNan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        }
        #thumbnails
        {
            width: 240px;
            height: 317px;
            overflow: hidden;
            z-index: 2;
        }
        #thumbnails img
        {
            display: block;
            width: 63px;
            height: 63px;
            float: left;
            padding: 3px;
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
            width: 320px;
            height: 300px;
        }
        #fullSize div
        {
            margin: 0 auto;
            text-align: left;
            padding: 10px 0;
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
    </style>

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",1);
    });
    </script>

    <script type="text/javascript">
/* ================================================================ 
This copyright notice must be untouched at all times.
Copyright (c) 2008 Stu Nicholls - stunicholls.com - all rights reserved.
=================================================================== */
/* <![CDATA[ */
$(document).ready(function(){
/* show first image and information */
firstStr = $('.thumb');
showStr = firstStr.html();
showDiv(showStr);
$('.thumb img').css("backgroundColor", "#F1ECE2");
$('.thumb').children(":first") .css("background", "#000");


/* monitor mouse clicks */
$('.thumb').click(function(){
$('.thumb img').css("backgroundColor", "#F1ECE2");
$(this).children(":first")	.css("background", "#000");
htmlStr = $(this).html();


/* swap images and information */
	$('#fullSize div')	.slideUp(500);
	$('#fullSize img')	.animate({"width": "1px"}, 400)
						.animate({"height": "0px"}, 400, function(){showDiv(htmlStr)});
});

/* show image and information */
function showDiv (htmlStr) {
	$('#fullSize').html(htmlStr);
//	    $('#fullSize img')	.hide();
	    $('#fullSize div')	.hide();
	imgWidth = ($('#fullSize img').outerWidth());
	imgHeight = ($('#fullSize img').outerHeight());

	$('#fullSize div')	.css("width",imgWidth + "px");
	$('#fullSize img')	.css("height", "1px")
						.css("width", "1px")
						.animate({"height": imgHeight}, 400)
						.animate({"width": imgWidth}, 400, function(){showInfo()});
}

function showInfo () {
	$('#fullSize div').slideDown(750);
}

});
/* ]]> */
    </script>

    <div id="main">
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a href="ChengPin.aspx">对戒</a> </dt>
                    <dt><a href="ChenPinNan.aspx">男戒</a> </dt>
                    <dt><a href="ChenPinNv.aspx">女戒</a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content">
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                            <div id="gallery">
                                <div id="thumbright">
                                    <center>
                                        <img src="images/gotop.gif" alt="向上滚动" width="100" height="14" id="gotop" /></center>
                                    <div id="thumbnails">
                                        <table cellpadding="3" cellspacing="3">
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t1.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t2.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t3.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t4.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t5.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t6.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t7.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t8.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t9.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t10.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t11.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t12.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t13.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t14.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t15.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t13.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t14.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t15.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t13.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t14.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t15.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="thumb">
                                                    <img src="trees/t13.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t14.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                                <td class="thumb">
                                                    <img src="trees/t15.jpg" alt="" />
                                                    <div>
                                                        <h1>
                                                            裸钻GIA</h1>
                                                        <p>
                                                            重量(Carat)：1.6100 ct</p>
                                                        <p>
                                                            净度(Clarity)：IF</p>
                                                        <p>
                                                            颜色(Color)：F</p>
                                                        <p>
                                                            切工(Cut)：EX</p>
                                                        <p>
                                                            抛光(Polish)：EX</p>
                                                        <p>
                                                            对称(Symmetry)：EX</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <center>
                                        <img src="images/gobottom.gif" alt="向下滚动" width="100" height="14" id="gobottom" /></center>
                                </div>
                                <div id="fullSize">
                                </div>
                            </div>
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                        </div>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

    <script type="text/javascript">
   
    var MyMar;
    var speed = 10; //速度，越大越慢
    var spec = 1; //每次滚动的间距, 越大滚动越快
    document.getElementById('gotop').onmouseover = function() { MyMar=setInterval(gotop,speed);}
    document.getElementById('gotop').onmouseout = function() { clearInterval(MyMar);}
    document.getElementById('gobottom').onmouseover = function() { MyMar=setInterval(gobottom,speed);}
    document.getElementById('gobottom').onmouseout = function() { clearInterval(MyMar);}
    function gotop() {document.getElementById('thumbnails').scrollTop-=spec;}
    function gobottom() {document.getElementById('thumbnails').scrollTop+=spec;}
    
    </script>

</asp:Content>
