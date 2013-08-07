<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ChenPinNv.aspx.cs" Inherits="DaDa.ChenPinNv" %>

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

    <link type="text/css" rel="stylesheet" href="WebStyle/mergingimage.css">

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",2);
    });
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
                        </div>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</asp:Content>
