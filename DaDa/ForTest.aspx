<%@ Page Title="Test Page" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForTest.aspx.cs" Inherits="DaDa.ForTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>    <ul class="productUlTable">
        <%
                Response.Write(string.Format("<li><a href=\"{0}\" title=\"{1}\">" +
                    "<img alt=\"\" title=\"\" src=\"{2}\" /></a><div>{3}</div></li>",
                    pt.pt_ImageName, pt.pt_Name, pt.pt_ImageName, pt.pt_Desc));
            
        %>
        <li>
            <a href="Product/nvjie/HH3924-2.29G-0.312CT-￥2639.jpg" title="金重：2.01克，钻石重量：0.242CT">
                <img alt="" title="" src="Product/nvjie/HA0361-2.01g-D0.242ct-1704.jpg" /></a><div>
                    2.01g-D0.242ct</div>
        </li>
        <li>
            <a href="Product/nvjie/HA0366-1.83g-D0.334ct-2654.jpg" title="金重：1.83克，钻石重量：0.334CT">
                <img alt="" title="" src="Product/nvjie/HA0366-1.83g-D0.334ct-2654.jpg" /></a><div>
                    1.83g-D0.334ct</div>
        </li><li>
            <a href="Product/nvjie/HA0399-1.85g-D0.259ct-1696.jpg" title="金重：1.85克，钻石重量：0.259CT">
                <img alt="" title="" src="Product/nvjie/HA0399-1.85g-D0.259ct-1696.jpg" /></a><div>
                    1.85g-D0.259ct</div>
        </li><li>
            <a href="Product/nvjie/HA0404-1.79g-D0.309-2451.jpg" title="金重：1.79克，钻石重量：0.309CT">
                <img alt="" title="" src="Product/nvjie/HA0404-1.79g-D0.309-2451.jpg" /></a><div>
                    1.79g-D0.309</div>
        </li><li>
            <a href="Product/nvjie/HA0463-2.16g-D0.161ct-1144.jpg" title="金重：2.16克，钻石重量：0.161CT">
                <img alt="" title="" src="Product/nvjie/HA0463-2.16g-D0.161ct-1144.jpg" /></a><div>
                    2.16g-D0.161ct</div>
        </li><li>
            <a href="Product/nvjie/HA0586-1.72g-D0.302ct-2402.jpg" title="金重：1.72克，钻石重量：0.302CT">
                <img alt="" title="" src="Product/nvjie/HA0586-1.72g-D0.302ct-2402.jpg" /></a><div>
                    1.72g-D0.302ct</div>
        </li><li>
            <a href="Product/nvjie/HA0589-1.87G-D0.329ct-2588.jpg" title="金重：1.87克，钻石重量：0.329CT">
                <img alt="" title="" src="Product/nvjie/HA0589-1.87g-D0.329ct-2588.jpg" /></a><div>
                    1.87g-D0.329ct</div>
        </li><li>
            <a href="Product/nvjie/HA0668-1.8G-D0.327-2563.jpg" title="金重：1.80克，钻石重量：0.327CT">
                <img alt="" title="" src="Product/nvjie/HA0668-1.8g-D0.327-2563.jpg" /></a><div>
                    1.80g-D0.327</div>
        </li><li>
            <a href="Product/nvjie/HA0004-2.68g-0.234CT-￥1831.jpg" title="金重：2.68克，钻石重量：0.234CT">
                <img alt="" title="" src="Product/nvjie/HA0004-2.68g-0.234CT-￥1831.jpg" /></a><div>
                    2.68g-D0.234ct</div>
        </li><li>
            <a href="Product/nvjie/HA0159-1.45G-0.332CT-￥2548.jpg" title="金重：1.45克，钻石重量：0.332CT">
                <img alt="" title="" src="Product/nvjie/HA0159-1.45g-0.332CT-￥2548.jpg" /></a><div>
                    1.45g-D0.332ct</div>
    </li><li>
            <a href="Product/nvjie/HA0672-1.75g-0.312ct-2441.jpg" title="金重：1.75克，钻石重量：0.312CT">
                <img alt="" title="" src="Product/nvjie/HA0672-1.75g-0.312ct-2441.jpg" /></a><div>
                    1.75g-D0.312ct</div>
        </li><li>
            <a href="Product/nvjie/HA0875-1.99G-0.301CT-￥2498.jpg" title="金重：1.99克，钻石重量：0.301CT">
                <img alt="" title="" src="Product/nvjie/HA0875-1.99G-0.301CT-￥2498.jpg" /></a><div>
                    1.99g-D0.301ct</div>
        </li><li>
            <a href="Product/nvjie/HA0906-2.17g-0.304ct-￥2563.jpg" title="金重： 2.16克，钻石重量：0.161CT">
                <img alt="" title="" src="Product/nvjie/HA0906-2.17g-0.304ct-￥2563.jpg" /></a><div>
                    2.16g-D0.161ct</div>
        </li><li>
            <a href="Product/nvjie/HH3924-2.29G-0.312CT-￥2639.jpg" title="金重：2.29克，钻石重量：0.312CT">
                <img alt="" title="" src="Product/nvjie/HH3924-2.29G-0.312CT-￥2639.jpg" /></a><div>
                    2.29g-D0.312ct</div>
        </li><li>
            <a href="Product/nvjie/HA0917-1.71g-0.3CT-￥2414.jpg" title="金重：1.87克，钻石重量：0.300CT">
                <img alt="" title="" src="Product/nvjie/HA0917-1.71g-0.3CT-￥2414.jpg" /></a><div>
                    1.87g-D0.300ct</div>
        </li><li>
            <a href="Product/nvjie/HA1030-1.98g-0.308CT-￥2538.jpg" title="金重：1.98克，钻石重量：0.308CT">
                <img alt="" title="" src="Product/nvjie/HA1030-1.98g-0.308CT-￥2538.jpg" /></a><div>
                    1.98g-D0.308ct</div>
        </li>
    </ul>
    </div>

</asp:Content>
