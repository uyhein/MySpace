using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DaDa
{
    public partial class Index : System.Web.UI.Page
    {
        public string tab_firstConf { get; set; }
        public string tab_secondConf { get; set; }
        public List<string> tab_confTitles;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                initialize();
            }
        }
        private void initialize()
        {
            tab_firstConf = "最新活动";
            tab_secondConf = "品牌动态";
            tab_confTitles = new List<string>();
            tab_confTitles.Add("情人节新品热推 定情对戒");
            tab_confTitles.Add("闪耀非凡彩钻 缤纷上线");
            tab_confTitles.Add("浪漫情人节 你买”对“了吗？");
            tab_confTitles.Add("中行-小鸟合作抽奖活动");
            tab_confTitles.Add("年末大优惠 单买团购巨划算");
            tab_confTitles.Add("爱的桂冠－白18K金钻石戒托");
        }
    }
}
