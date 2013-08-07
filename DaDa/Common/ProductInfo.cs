using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DaDa.Common
{
    public class ProductInfo
    {
        public string pt_Id;
        public string pt_Name { get; set; }
        public string pt_Desc { get; set; }
        //public float pt_Price { get; set; }
        public string pt_Brands { get; set; }
        public string pt_ImageName { get; set; }
        public string pt_Catogary { get; set; }
    }
}