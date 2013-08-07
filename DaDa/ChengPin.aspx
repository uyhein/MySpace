<%@ Page Title="贝瓷臻品" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ChengPin.aspx.cs" Inherits="DaDa.ChengPin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body
        {
            background-image: url(images/webBJ2.jpg);
        }
        .productDesk
        {
            width: 750px;
            margin: auto;
        }
        .productDesk ul
        {
            list-style:none;
            width: 100%;
        }
        .productDesk li
        {
            float:left;
         } 
        .productDesk li div
        {
            width: 186px;
            height: 30px;
            background-color: #c2c2c2;
            position: relative;
            top: -15px;
            left: 0px;
            color: White;
            line-height: 30px;
            text-align: center;
        }
        .productDesk img
        {
            width: 184px;
            height: 184px;
            border: solid 1px #cccccc;
        }
    </style>

    <script src="js/jquery.lightbox-0.5.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            tabs(".tab-hd", "active", ".tab-bd", 0);
        });
    </script>

    <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>

    <link type="text/css" rel="stylesheet" href="WebStyle/scroll.css">
    <link rel="stylesheet" type="text/css" href="WebStyle/jquery.lightbox-0.5.css" media="screen" />
    <div id="main">
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a href="#">展柜</a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content" style="background-image: url('images/ZuanJieContentBg.jpg');">
                            <div id="scroll">
                                <div id="scroLeft" style="position: relative;">
                                    <div id="gallery" class="productDesk">
                                            <ul class="productUlTable">
                                                 <%foreach (DaDa.Common.ProductInfo pt in productList) {
                                                  Response.Write(string.Format("   <li> "+
                                                    "<a href=\"{0}\" title=\"{1}\">"+
                                                        "<img alt=\"\" title=\"\" src=\"{2}\" /></a><div>"+
                                                         "   {3}</div>"+
                                                "</li>",pt.pt_ImageName, pt.pt_Desc, pt.pt_ImageName, pt.pt_Name));
                                              }
                                                 %>
                                        </ul>
                                    </div>
                                </div>
                                <div id="scroRight">
                                    <div id="scroLine">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </dd>
                    <%--           <dd>
                        <div class="content">
                        </div>
                    </dd>
                    <dd>
                        <div class="content">
                        </div>
                    </dd>--%>
                </dl>
            </div>
        </div>
    </div>

    <script src="js/common.js" type="text/javascript"></script>

</asp:Content>
