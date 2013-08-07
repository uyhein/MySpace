<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="LuoZhuan30.aspx.cs" Inherits="DaDa.LuoZhuan30" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body
        {
            background-image: url(images/webBJ2.jpg);
        }
    </style>

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",2);
    });
    </script>

    <div id="main">
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a href="luozhuan.aspx">10分美钻</a> </dt>
                    <dt><a href="luozhuan20.aspx">20分美钻</a> </dt>
                    <dt><a href="luozhuan30.aspx">30分美钻</a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content">
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                            <object height="600" width="820" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                                codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0"
                                style="margin-top: -120px;" id="flashfirebug">
                                <param value="imageshow.swf" name="movie" />
                                <param value="high" name="quality" />
                                <param value="transparent" name="wmode" />
                                <param value="pics=http://www.jinzuanwang.com/img/a1.jpg|http://www.jinzuanwang.com/img/b2.jpg|http://www.jinzuanwang.com/img/c3.jpg|http://www.jinzuanwang.com/img/d4.jpg|http://www.jinzuanwang.com/img/e5.jpg|http://www.jinzuanwang.com/img/f6.jpg&amp;links=http://www.jinzuanwang.com/ProductShow.aspx?id=1313383|http://www.jinzuanwang.com/productshow.aspx?id=1313374|http://www.jinzuanwang.com/ProductShow.aspx?id=1313405|http://www.jinzuanwang.com/topics/lovebook/index.html|http://www.jinzuanwang.com/productlist.aspx|http://www.jinzuanwang.com/dia.aspx&amp;texts=高性价比18K金钻石戒指|三环钻戒，锁住您的心|39颗钻 您的钻石戒指|心动 心中最爱 情书系列|钻戒，对戒|完美裸钻 只为你"
                                    name="FlashVars" />
                                <param name="allowFullScreen" value="true" />
                                <param name="allowScriptAccess" value="always" />
                            </object>
                        </div>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</asp:Content>
