<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Service.aspx.cs" Inherits="DaDa.Service" Title="售后服务" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body
        {
            background-image: url(images/webBJ2.jpg);
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
                    <dt><a>售后服务</a> </dt>
                    <dt><a>15天退货</a> </dt>
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
                                                    凡在DADA珠宝购买任意一款产品的顾客，即可成为我们的会员。会员享有以下权利：</div>
                                                <div>
                                                    &nbsp;</div>
                                                <div align="left">
                                                    <b>维修保养售后服务</b></div>
                                                <div align="left">
                                                    DADA珠宝是专业钻石购物网站，更在青岛设有体验中心，以极为优惠的价格为您提供至臻完美的钻石产品和一流的、安全无忧的网上购物体验，同时更让您享受超值售后服务。</div>
                                                <div align="left">
                                                    &nbsp;</div>
                                                <div align="left">
                                                    DADA珠宝的钻石产品均附有国家或国际权威机构的珠宝钻石鉴定证书，绝对保证品质。 <u>凡在DADA珠宝购买的产品，均自动享受本公司的售后服务，不论您有什么问题，请与DADA珠宝客户服务中心联系</u><u>,</u><u>我们将在</u><u>24</u><u>小时内开始处理，并承诺在三个工作日内回复处理结果。</u><u></u></div>
                                                <div align="left">
                                                    &nbsp;</div>
                                                <div align="left">
                                                    <b>售后服务项目</b>：</div>
                                                <div align="left">
                                                    1. 镶嵌首饰改款</div>
                                                <div align="left">
                                                    我们将按市场价收购原有戒托等金属部件，改款加工程序按定制流程执行，完成再加工的新款金属部件将以市场价售回，我们仅收取其间的加工费用。具体加工费用参考定制收费条款。</div>
                                                <div align="left">
                                                </div>
                                                <div align="left">
                                                    2. 戒指改手寸</div>
                                                <div align="left">
                                                    如果您有更改手寸的需要，我们也将为您提供此服务，每次加工费用为30-50元，材料费需自理。</div>
                                                <div align="left">
                                                    3. 项链或手链、脚链等首饰的改短</div>
                                                <div align="left">
                                                    加工费用为20-30元，多余金属部件全部退回。</div>
                                                <div align="left">
                                                    4. 损坏首饰的维修</div>
                                                <div align="left">
                                                    维修价格根据首饰损坏程度的不同会有较大差异，请直接与DADA珠宝客服中心联系或至体验中心现场咨询。</div>
                                                <div align="left">
                                                    5.&nbsp;电镀
                                                </div>
                                                <div align="left">
                                                    首饰原有镀层如在佩戴过程中发生损坏，出现发黑等情况，您可至DADA珠宝体验中心，我们将为您提供重新电镀服务。电镀费用为每次15-30元。</div>
                                                <div align="left">
                                                    * 以上各项加工费用可能会有上下浮动，届时视具体情况酌情而定。</div>
                                                <div align="left">
                                                    &nbsp;</div>
                                                <div align="left">
                                                    <b>免费服务项目：（今限于本网站售出的商品）</b></div>
                                                <div align="left">
                                                    首饰在戴过一段时间后，容易发乌或失去光泽；在这种情况下，您可以前往我们的客服中心或直接邮寄回公司(邮费自理)，我们将会为您提供免费超声波清洗、抛光服务，使您的首饰焕然一新。</div>
                                                <div>
                                                    1．所有饰品终身免费清洗。</div>
                                                <div>
                                                    2．珠宝鉴定专家免费咨询服务。</div>
                                                <div>
                                                    3．定期举办珠宝知识/佩戴艺术讲座。</div>
                                                <div align="left">
                                                    &nbsp;</div>
                                                <div align="left">
                                                    * 以上各项条款解释权归DADA珠宝公司所有</div>
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
