using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DaDa.Common
{
    public class ProductProvider
    {
        public static IProducyOperations GetProperProduct(string ptCategory)
        {
            IProducyOperations ipo = null;
            string dataFetch = "XML";
            switch (dataFetch)
            {
                case "XML":
                    ipo = new ProductXMLPipeline(ptCategory);
                    break;
                case"DB":
                    throw new Exception("not implemented.");
                    break;
            }
            return ipo;
        }
    }
}