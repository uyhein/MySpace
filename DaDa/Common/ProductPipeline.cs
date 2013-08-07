using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Xml;

namespace DaDa.Common
{
    public class ProductXMLPipeline : IProducyOperations
    {
        public string productXmlPhysicalPath { get; set; }

        public ProductXMLPipeline(string category)
        {
            switch (category)
            {
                case"diamond":
                    this.productXmlPhysicalPath = StaticDataProvider.xmlPath_CSpt;
                    break;
                default:
                    this.productXmlPhysicalPath = StaticDataProvider.xmlPath_CSpt;
                    break;
            }
        }

        public ProductInfo GetProduct(string id)
        {
            ProductInfo pti = null;
            //verify if xml file exists
            if (File.Exists(productXmlPhysicalPath))
            {
                try
                {
                    XmlDocument xdoc = new XmlDocument();
                    xdoc.Load(StaticDataProvider.xmlPath_CSpt);
                    //if specified id exists
                    XmlNode node = xdoc.SelectSingleNode(string.Format("/ChinaOfShells/CShell[ShellId={0}]", id));
                    if (node == null)
                        throw new Exception("no such pt node");

                    pti = initialPTByXmlNode(node);
                }
                catch (Exception ex)
                { }
            }
            //initialize productInfo
            return pti;
        }
        public ProductInfo[] GetAllProducts()
        {
            List<ProductInfo> ptiList = new List<ProductInfo>();
            if (File.Exists(StaticDataProvider.xmlPath_CSpt))
            {
                try
                {
                    XmlDocument xdoc = new XmlDocument();
                    xdoc.Load(StaticDataProvider.xmlPath_CSpt);
                    //if specified id exists
                    XmlNodeList node = xdoc.SelectNodes("/ChinaOfShells/CShell");
                    foreach (XmlNode xn in node)
                    {
                        ProductInfo pti = initialPTByXmlNode(xn);
                        ptiList.Add(pti);
                    }
                }
                catch { }
            }

            return ptiList.ToArray();
        }
        public void SaveProduct(ProductInfo pt)
        {
            throw new Exception("no implemented.");
        }
        public void SetImage(ProductInfo pt, string imageName)
        {
            throw new Exception("no implemented.");        
        }
        public void DeleteProduct(ProductInfo pt)
        {
            throw new Exception("no implemented.");
        }
        public void SetCatogary(ProductInfo pt, string catogary)
        {
            throw new Exception("no implemented.");
        }

        #region private methods
        private ProductInfo initialPTByXmlNode(XmlNode xNode)
        {
            ProductInfo pti = null;
            pti = new ProductInfo();
            pti.pt_Name = xNode["ShellName"].InnerText;
            pti.pt_Brands = xNode["ShellBrands"].InnerText;
            pti.pt_Desc = xNode["ShellDesc"].InnerText;
            pti.pt_Catogary = xNode["ShellCategory"].InnerText;
            pti.pt_ImageName = xNode["ShellImageName"].InnerText;
            return pti;
        }
        #endregion
    }
}