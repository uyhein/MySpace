using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaDa.Common;


namespace DaDa
{
    public partial class ChengPin : System.Web.UI.Page
    {
        public List<ProductInfo> productList = new List<ProductInfo>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                intialize();
            }
        }

        private void intialize()
        {
            IProducyOperations opera = ProductProvider.GetProperProduct("diamond");
            ProductInfo[] ptArray = opera.GetAllProducts();
            productList = ptArray.ToList();
        }
    }
}
