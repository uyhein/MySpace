using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaDa.Common;

namespace DaDa
{
    public partial class ForTest : System.Web.UI.Page
    {
        public ProductInfo pt = new Common.ProductInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IProducyOperations opera = ProductProvider.GetProperProduct("XML");
                pt = opera.GetAllProducts()[0];
            }
        }
    }
}