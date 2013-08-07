<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintainCS.aspx.cs" Inherits="DaDa.Maintain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/jquery-1.6.js" type="text/javascript"></script>
<script src="../js/jquery.jqzoom-core.js" type="text/javascript"></script>
<style type="text/css">
    .productDetails
    {
        list-style:none;
    }
    .categaryDDL
    {
        width:155px;
        }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $('.jqzoom').jqzoom({
            zoomType: 'standard',
            lens: true,
            preloadImages: false,
            alwaysOn: true
        });
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main">
    <div class="content" style="background-image: url('images/ZuanJieContentBg.jpg');">
           <div id="gallery" class="productDesk">
                <ul class="productDetails">
                    <li>
                        <span>产品名称：</span><input id="name" />
                    </li>
                    <li>
                        <span>产品品牌：</span><input id="Text1" />
                    </li>
                    <li>
                        <span>产品描述：</span><input id="Text2" />
                    </li>
                    <li>
                        <span>产品类别：</span><input id="Text3" /><select class="categaryDDL"><option></option><option>1</option><option>2</option></select>
                    </li>
                    <li>
                        <span>产品图片：</span><input id="Text4" />
                    </li>
                    <li>
                        <a href="Product/huangjin/11.jpg" class="jqzoom" rel='gal1'  title="triumph" >
            <img src="Product/huangjin/9.jpg"  title="triumph"  style="border: 4px solid #666;">
        </a>
                    </li>
                </ul>
           </div>
    </div>
</div>
</asp:Content>
