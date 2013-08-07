<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Distribution.aspx.cs" Inherits="DaDa.Distribution" Title="配送方式" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body
        {
            background-image: url(images/webBJ2.jpg);
        }
        .hide
        {
            display: none;
        }
    </style>
    <link type="text/css" rel="stylesheet" href="WebStyle/scroll.css">

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",0);
    });
    </script>

    <div id="main">
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a>配送方式</a> </dt>
                    <dt><a>支付方式</a> </dt>
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content">
                            <div id="scroll">
                                <div id="scroLeft">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" class="left">
                                        <tr>
                                            <td valign="top" style="font-size: 14px; line-height: 150%">
                                                <div>
                                                    <b>一、货品包装</b></div>
                                                <div>
                                                    为满足顾客结婚、礼物、钻饰保养等需求，DADA珠宝对售出的每一件钻石饰品配以精美包装。其中包括首饰盒、首饰盒礼盒、宣传册、专业擦钻布、证书夹。
                                                </div>
                                                <div>
                                                    &nbsp;</div>
                                                <div>
                                                    <b>二、线上配送</b>：</div>
                                                <div>
                                                    1. 国内免费快递：</div>
                                                <div>
                                                    如您的收货地址是中国大陆境外，订购支付成功并生成有效订单后，不分价格高低，DADA珠宝为您选择遍布全球的EMS快递，一律按每件225元运保费计。</div>
                                                <div>
                                                </div>
                                                <div>
                                                    2. 国外快递：
                                                </div>
                                                <div>
                                                    如您的收货地址是中国大陆境外，订购支付成功并生成有效订单后，不分价格高低，DADA珠宝为您选择遍布全球的EMS快递，一律按每件225元运保费计。
                                                </div>
                                                <div>
                                                    3. 货物配送方式：</div>
                                                <div>
                                                    （1）DADA珠宝商品全部由联邦专递方式或中国邮政EMS特快进行配送。</div>
                                                <div>
                                                    （2）DADA珠宝为任何国内定单的商品提供专业快递及全程保价，无论您的订单金额多少，您不必为商品支付任何运费。</div>
                                                <div>
                                                    4. 全程运输保险：</div>
                                                <div>
                                                    DADA珠宝货品由中国平安保险公司提供全程运输保险。由于运输原因发生的丢失均由中国平安保险提供全额赔付。</div>
                                                <div>
                                                    5.到货时间：
                                                </div>
                                                <div>
                                                    在您支付成功并生成了有效订单后，如是定制订单我们将安排生产部门尽快进行生产，如为现货，我们将在接到生效订单后尽快安排发送货物。
                                                </div>
                                                <div>
                                                    &nbsp;</div>
                                                <div>
                                                    <b>三、线下配送</b></div>
                                                <div>
                                                    体验店自取：</div>
                                                <div>
                                                    如您选择自取方式提货，只需在线成功支付定金或全额，收到短信和客服电话的到货通知后，您便可至最近的DADA珠宝体验店凭订单人的身份证原件取货。</div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="scroRight">
                                    <div id="scroLine">
                                    </div>
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

    <script src="js/common.js" type="text/javascript"></script>

</asp:Content>
