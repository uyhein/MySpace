<%@ Page Title="黄金饰品" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="HuangJin.aspx.cs" Inherits="DaDa.HuangJin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body
        {
            background-image: url(images/webBJ2.jpg);
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
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a>黄金饰品</a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content">
                            <div id="im_wrapper" class="im_wrapper">
                                <div style="background-position: 0px 0px;">
                                    <img src="Product/huangjin/24Kdiaozhui1.jpg" alt="" /></div>
                                <div style="background-position: -125px 0px;">
                                    <img src="Product/huangjin/9.jpg" alt="" /></div>
                                <div style="background-position: -250px 0px;">
                                    <img src="Product/huangjin/11.jpg" alt="" /></div>
                                <div style="background-position: -375px 0px;">
                                    <img src="Product/huangjin/24Kdiaozhui2.jpg" alt="" /></div>
                                <div style="background-position: -500px 0px;">
                                    <img src="Product/huangjin/24Kdiaozhui3.jpg" alt="" /></div>
                                <div style="background-position: -625px 0px;">
                                    <img src="Product/huangjin/24Kdiaozhui4.jpg" alt="" /></div>
                                <div style="background-position: 0px -90px;">
                                    <img src="Product/huangjin/24Kdiaozhui5.jpg" alt="" /></div>
                                <div style="background-position: -125px -90px;">
                                    <img src="Product/huangjin/24Kdiaozhui6.jpg" alt="" /></div>
                                <div style="background-position: -250px -90px;">
                                    <img src="Product/huangjin/24Kdiaozhui7.jpg" alt="" /></div>
                                <div style="background-position: -375px -90px;">
                                    <img src="Product/huangjin/24Kdiaozhui8.jpg" alt="" /></div>
                                <div style="background-position: -500px -90px;">
                                    <img src="Product/huangjin/24Kdiaozhui9.jpg" alt="" /></div>
                                <div style="background-position: -625px -90px;">
                                    <img src="Product/huangjin/24kerzhui1.jpg" alt="" /></div>
                                <div style="background-position: 0px -180px;">
                                    <img src="Product/huangjin/24kerzhui2.jpg" alt="" /></div>
                                <div style="background-position: -125px -180px;">
                                    <img src="Product/huangjin/24kshoulian1.jpg" alt="" /></div>
                                <div style="background-position: -250px -180px;">
                                    <img src="Product/huangjin/24kshoulian2.jpg" alt="" /></div>
                                <div style="background-position: -375px -180px;">
                                    <img src="Product/huangjin/24kshoulian3.jpg" alt="" /></div>
                                <div style="background-position: -500px -180px;">
                                    <img src="Product/huangjin/24Kdiaozhui8.jpg" alt="" /></div>
                                <div style="background-position: -625px -180px;">
                                    <img src="Product/huangjin/24Kdiaozhui8.jpg" alt="" /></div>
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
</asp:Content>
